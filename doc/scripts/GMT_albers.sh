#!/bin/bash
#	$Id: GMT_albers.sh 18501 2017-06-29 05:08:37Z pwessel $
#
gmt set MAP_GRID_CROSS_SIZE_PRIMARY 0
gmt pscoast -R110/140/20/35 -JB125/20/25/45/5i -Bag -Dl -Ggreen -Wthinnest -A250 -P > GMT_albers.ps
