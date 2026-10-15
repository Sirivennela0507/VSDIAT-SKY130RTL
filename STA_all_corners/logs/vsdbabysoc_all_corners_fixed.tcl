
# All-corner post-route STA
# Uses routed ODB, route SDC, extracted SPEF and individual Liberty files.
# Reports are written using native OpenROAD output redirection.

set design  "$::env(DESIGN)"
set libdir  "$::env(LIBDIR)"
set outdir  "$::env(OUT)"

file mkdir $outdir

set odb  "$design/6_final.odb"
set spef "$design/6_final.spef"
set sdc  "$design/5_route.sdc"

# ------------------------------------------------------------
# 1. Validate routed design inputs
# ------------------------------------------------------------

foreach f [list $odb $spef $sdc] {
    if {![file exists $f] || [file size $f] == 0} {
        error "Missing or empty required input: $f"
    }
}

set libs [lsort [glob -nocomplain "$libdir/sky130_fd_sc_hd__*.lib"]]

if {[llength $libs] != 16} {
    error "Expected 16 corner libraries; found [llength $libs] in $libdir"
}

puts "Found [llength $libs] Liberty corner files."

# ------------------------------------------------------------
# 2. Define all corners before loading Liberty libraries
# ------------------------------------------------------------

set corners {}

foreach lib $libs {
    set base [file rootname [file tail $lib]]
    set corner [string map {"sky130_fd_sc_hd__" ""} $base]
    lappend corners $corner
}

define_corners {*}$corners
puts "Defined [llength $corners] timing corners."

# ------------------------------------------------------------
# 3. Load each Liberty library into its matching corner
# ------------------------------------------------------------

foreach lib $libs corner $corners {
    read_liberty -corner $corner $lib
    puts "Loaded Liberty: $corner"
}

# ------------------------------------------------------------
# 4. Load the routed design and timing constraints
# ------------------------------------------------------------

read_db $odb
read_sdc $sdc

# ------------------------------------------------------------
# 5. Prepare the CSV summary
# ------------------------------------------------------------

set summary "$outdir/corner_summary_raw.csv"
set csv [open $summary w]

puts $csv "corner,liberty,run_status"

# ------------------------------------------------------------
# 6. Run timing reports for all 16 corners
# ------------------------------------------------------------

set successful 0
set failed 0

foreach lib $libs {
    set base [file rootname [file tail $lib]]
    set corner [string map {"sky130_fd_sc_hd__" ""} $base]
    set cdir "$outdir/corners/$corner"

    file mkdir $cdir

    puts "\n========================================"
    puts "CORNER: $corner"
    puts "LIBRARY: [file tail $lib]"
    puts "========================================"

    # Record the corner's status for error handling.
    set corner_ok 1

    # Associate extracted routed parasitics with this corner.
    if {[catch {read_spef -corner $corner $spef} err]} {
        puts stderr "ERROR loading SPEF for $corner: $err"
        set corner_ok 0
    }

    if {$corner_ok} {
        # Setup timing paths
        if {[catch {
            report_checks -corner $corner -path_delay max \
                -format full_clock_expanded \
                -fields {slew cap input_pin net fanout} \
                -digits 4 -group_path_count 20 \
                > "$cdir/setup.rpt"
        } err]} {
            puts stderr "ERROR generating setup report for $corner: $err"
            set corner_ok 0
        }
    }

    if {$corner_ok} {
        # Hold timing paths
        if {[catch {
            report_checks -corner $corner -path_delay min \
                -format full_clock_expanded \
                -fields {slew cap input_pin net fanout} \
                -digits 4 -group_path_count 20 \
                > "$cdir/hold.rpt"
        } err]} {
            puts stderr "ERROR generating hold report for $corner: $err"
            set corner_ok 0
        }
    }

    if {$corner_ok} {
        # Unconstrained timing paths
        if {[catch {
            report_checks -corner $corner -unconstrained \
                -format full_clock_expanded \
                -digits 4 -group_path_count 20 \
                > "$cdir/unconstrained.rpt"
        } err]} {
            puts stderr "ERROR generating unconstrained report for $corner: $err"
            set corner_ok 0
        }
    }

    # Verify that all three report files contain text.
    if {$corner_ok} {
        foreach report {setup.rpt hold.rpt unconstrained.rpt} {
            set report_path "$cdir/$report"

            if {![file exists $report_path] ||
                [file size $report_path] == 0} {
                puts stderr "ERROR: Empty or missing report: $report_path"
                set corner_ok 0
            }
        }
    }

    if {$corner_ok} {
        puts "Validated non-empty reports for $corner."
        puts $csv "$corner,[file tail $lib],REPORTS_GENERATED"
        incr successful
    } else {
        puts $csv "$corner,[file tail $lib],FAILED"
        incr failed
    }

    puts "Finished processing $corner"
}

close $csv

# ------------------------------------------------------------
# 7. Final run status
# ------------------------------------------------------------

puts "\n========================================"
puts "MULTICORNER STA SUMMARY"
puts "Corners found: [llength $corners]"
puts "Corners successful: $successful"
puts "Corners failed: $failed"
puts "Raw summary: $summary"
puts "========================================"

if {$failed > 0} {
    error "$failed corner(s) failed. Review the log and corner reports."
}

puts "===== MULTICORNER STA COMPLETE ====="
exit
