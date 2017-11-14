#!/bin/bash
#	$Id: GMT_stereographic_general.sh 18501 2017-06-29 05:08:37Z pwessel $
#
gmt set MAP_ANNOT_OBLIQUE 0
gmt pscoast -R100/-42/160/-8r -JS130/-30/4i -Bag -Dl -A500 -Ggreen -P \
	-Slightblue -Wthinnest > GMT_stereographic_general.ps
