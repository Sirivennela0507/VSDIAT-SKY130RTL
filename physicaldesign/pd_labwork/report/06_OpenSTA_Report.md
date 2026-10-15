# Post-route OpenSTA Report

## What I did
I checked timing after routing using OpenSTA.

Commands used:
- report_wns
- report_tns
- report_checks -path_delay max
- report_checks -path_delay min

## Observed result
- WNS max = 0.00
- TNS max = 0.00

## In simple words
WNS shows the worst timing margin and TNS shows the total negative timing slack. The recorded maximum values were 0.00.
