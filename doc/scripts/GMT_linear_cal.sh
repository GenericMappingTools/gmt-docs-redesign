#!/bin/bash
#	$Id: GMT_linear_cal.sh 18501 2017-06-29 05:08:37Z pwessel $
#
gmt set FORMAT_DATE_MAP o TIME_WEEK_START Sunday FORMAT_CLOCK_MAP=-hham \
	FORMAT_TIME_PRIMARY_MAP full
gmt psbasemap -R2001-9-24T/2001-9-29T/T07:0/T15:0 -JX4i/-2i -Bxa1Kf1kg1d -Bya1Hg1h -BWsNe+glightyellow \
	-P > GMT_linear_cal.ps
