#!/bin/bash
#	$Id: GMT_-B_time1.sh 18501 2017-06-29 05:08:37Z pwessel $
#
gmt set FORMAT_DATE_MAP=-o FONT_ANNOT_PRIMARY +9p
gmt psbasemap -R2000-4-1T/2000-5-25T/0/1 -JX5i/0.2i -Bpa7Rf1d -Bsa1O -BS -P > GMT_-B_time1.ps
