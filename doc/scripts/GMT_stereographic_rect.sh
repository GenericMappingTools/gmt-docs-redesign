#!/bin/bash
#	$Id: GMT_stereographic_rect.sh 18501 2017-06-29 05:08:37Z pwessel $
#
gmt set MAP_ANNOT_OBLIQUE 30
gmt pscoast -R-25/59/70/72r -JS10/90/11c -B20g -Dl -A250 -Gdarkbrown -Wthinnest -P \
	-Slightgray > GMT_stereographic_rect.ps
