#!/bin/bash
#	$Id: GMT_-B_time6.sh 18501 2017-06-29 05:08:37Z pwessel $
#
gmt set FORMAT_DATE_MAP "o yy" FORMAT_TIME_PRIMARY_MAP Abbreviated
gmt psbasemap -R1996T/1996-6T/0/1 -JX5i/0.2i -Ba1Of1d -BS -P > GMT_-B_time6.ps
