#!/bin/bash
#		GMT EXAMPLE 08
#		$Id: example_08.sh 19169 2017-10-24 04:15:38Z pwessel $
#
# Purpose:	Make a 3-D bar plot
# GMT modules:	grd2xyz, makecpt, pstext, psxyz
# Unix progs:	echo, rm
#
ps=example_08.ps
gmt makecpt -Ccubhelix -T-5000/0 > t.cpt
gmt grd2xyz @guinea_bay.nc | gmt psxyz -B1 -Bz1000+l"Topography (m)" -BWSneZ+b+tETOPO5 \
	-R-0.1/5.1/-0.1/5.1/-5000/0 -JM5i -JZ6i -p200/30 -So0.0833333ub-5000 -P \
	-Wthinnest -Ct.cpt -K -i0-2,2 > $ps
echo '0.1 4.9 This is the surface of cube' | gmt pstext -R -J -JZ -Z0 \
	-F+f24p,Helvetica-Bold+jTL -p -O >> $ps
