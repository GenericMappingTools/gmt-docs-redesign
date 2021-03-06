#!/bin/bash
#	$Id: GMT_App_O_6.sh 19211 2017-11-01 04:23:43Z pwessel $
#
#	Makes Fig 6 for Appendix O (labeled lines)
#
gmt pscoast -R50/160/-15/15 -JM5.3i -Gburlywood -Sazure -A500 -K -P > GMT_App_O_6.ps
gmt grdcontour @App_O_geoid.nc -J -O -K -B20f10 -BWSne -C10 -A20+d+f8p -Gl50/10S/160/10S -S10 \
	-T+l >> GMT_App_O_6.ps
gmt psxy -R -J -O -SqD1000k:+g+LD+an+p -Wthick @App_O_transect.txt >> GMT_App_O_6.ps
