#!/bin/bash
#	$Id: GMT_gall_stereo.sh 18501 2017-06-29 05:08:37Z pwessel $
#
gmt set FORMAT_GEO_MAP dddA
gmt pscoast -R-180/180/-60/80 -JCyl_stere/0/45/4.5i -Bxa60f30g30 -Bya30g30 -Dc -A5000 -Wblack \
	-Gseashell4 -Santiquewhite1 -P > GMT_gall_stereo.ps
