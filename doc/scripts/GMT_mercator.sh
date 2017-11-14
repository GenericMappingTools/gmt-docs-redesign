#!/bin/bash
#	$Id: GMT_mercator.sh 18501 2017-06-29 05:08:37Z pwessel $
#
gmt set MAP_FRAME_TYPE fancy+
gmt pscoast -R0/360/-70/70 -Jm1.2e-2i -Bxa60f15 -Bya30f15 -Dc -A5000 -Gred -P > GMT_mercator.ps
