#!/bin/bash
#	$Id: GMT_tut_9.sh 18315 2017-06-03 03:35:13Z pwessel $
#
gmt makecpt -Cred,green,blue -T0,100,300,10000 > quakes.cpt
gmt pscoast -R130/150/35/50 -JM6i -B5 -P -Ggray -K > GMT_tut_9.ps
gmt psxy -R -J -O @tut_quakes.ngdc -Wfaint -i4,3,5,6+s0.1 -h3 -Scc -Cquakes.cpt >> GMT_tut_9.ps
