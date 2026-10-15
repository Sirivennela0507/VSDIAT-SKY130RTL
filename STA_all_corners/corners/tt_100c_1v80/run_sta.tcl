set design "$::env(DESIGN)"
set libfile "$::env(LIBFILE)"
set corner "$::env(CORNER)"

define_corners $corner
read_liberty -corner $corner $libfile
read_db "$design/6_final.odb"
read_sdc "$design/5_route.sdc"
read_spef -corner $corner "$design/6_final.spef"

puts "METRIC_CORNER=$corner"

puts "SETUP_WNS_BEGIN"
report_worst_slack -max -digits 4
puts "SETUP_TNS_BEGIN"
report_tns -max -digits 4
puts "HOLD_WNS_BEGIN"
report_worst_slack -min -digits 4
puts "HOLD_TNS_BEGIN"
report_tns -min -digits 4

exit
