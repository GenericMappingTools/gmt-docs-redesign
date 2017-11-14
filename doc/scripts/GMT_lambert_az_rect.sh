#!/bin/bash
#	$Id: GMT_lambert_az_rect.sh 18501 2017-06-29 05:08:37Z pwessel $
#
gmt set FORMAT_GEO_MAP ddd:mm:ssF MAP_GRID_CROSS_SIZE_PRIMARY 0
gmt pscoast -R0/-40/60/-10r -JA30/-30/4.5i -Bag -Dl -A500 -Gp10+r300 -Wthinnest -P \
	> GMT_lambert_az_rect.ps
