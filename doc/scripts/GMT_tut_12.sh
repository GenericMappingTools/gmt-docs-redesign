#!/bin/bash
#	$Id: GMT_tut_12.sh 18315 2017-06-03 03:35:13Z pwessel $
#
gmt nearneighbor -R245/255/20/30 -I5m -S40k -Gship.nc @tut_ship.xyz
gmt grdcontour ship.nc -JM6i -P -Ba -C250 -A1000 > GMT_tut_12.ps
