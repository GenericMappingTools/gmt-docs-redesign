#!/bin/bash
#	$Id: GMT_log.sh 18490 2017-06-28 01:55:44Z pwessel $
#
gmt psxy -R1/100/0/10 -Jx1.5il/0.15i -Bx2g3 -Bya2f1g2 -BWSne+gbisque -Wthick,blue,- -P -K -h sqrt.txt \
	> GMT_log.ps
gmt psxy -R -J -Ss0.1i -N -Gred -W -O -h sqrt10.txt >> GMT_log.ps
