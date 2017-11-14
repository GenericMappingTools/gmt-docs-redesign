#!/bin/bash
#	$Id: GMT_tut_11.sh 18315 2017-06-03 03:35:13Z pwessel $
#
gmt grdcontour @tut_bathy.nc -JM6i -C250 -A1000 -P -Ba > GMT_tut_11.ps
