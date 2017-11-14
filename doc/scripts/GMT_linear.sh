#!/bin/bash
#	$Id: GMT_linear.sh 18490 2017-06-28 01:55:44Z pwessel $
#
gmt psxy -R0/100/0/10 -JX3i/1.5i -Bag -BWSne+gsnow -Wthick,blue,- -P -K sqrt.txt > GMT_linear.ps
gmt psxy -R -J -St0.1i -N -Gred -Wfaint -O sqrt10.txt >> GMT_linear.ps
