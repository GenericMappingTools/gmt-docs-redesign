#!/bin/bash
#	$Id: GMT_tut_19.sh 18315 2017-06-03 03:35:13Z pwessel $
#
gmt makecpt -Ctopo -T1000/5000 > t.cpt
gmt grdgradient @tut_relief.nc -Ne0.8 -A100 -fg -Gus_i.nc
gmt grdview tut_relief.nc -JM6i -p135/35 -Qi50 -Ius_i.nc -Ct.cpt -Ba -JZ0.5i > GMT_tut_19.ps
