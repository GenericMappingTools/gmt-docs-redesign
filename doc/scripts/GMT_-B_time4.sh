#!/bin/bash
#	$Id: GMT_-B_time4.sh 18501 2017-06-29 05:08:37Z pwessel $
#
gmt set FORMAT_CLOCK_MAP=-hham FONT_ANNOT_PRIMARY +9p TIME_UNIT d
gmt psbasemap -R0.2t/0.35t/0/1 -JX-5i/0.2i -Bpa15mf5m -Bsa1H -BS -P > GMT_-B_time4.ps
