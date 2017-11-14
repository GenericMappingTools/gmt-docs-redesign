#!/bin/bash
#	$Id: GMT_App_O_3.sh 19111 2017-10-16 01:08:31Z pwessel $
#
#	Makes Fig 3 for Appendix O (labeled lines)
#
cat << EOF > fix.txt
80      -8.5
55      -7.5
102     0
130     10.5
EOF
gmt pscoast -R50/160/-15/15 -JM5.3i -Gburlywood -Sazure -A500 -K -P > GMT_App_O_3.ps
gmt grdcontour @App_O_geoid.nc -J -O -B20f10 -BWSne -C10 -A20+d+f8p -Gffix.txt/0.1i -S10 -T+lLH >> GMT_App_O_3.ps
