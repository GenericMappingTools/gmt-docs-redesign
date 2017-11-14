#!/bin/bash
#		GMT EXAMPLE 21
#		$Id: example_21.sh 18483 2017-06-27 23:21:03Z pwessel $
#
# Purpose:	Plot a time-series
# GMT modules:	gmtset, gmtconvert, gmtinfo, psbasemap, psxy 
# Unix progs:	echo
#
ps=example_21.ps

# File has time stored as dd-Mon-yy so set input format to match it

gmt set FORMAT_DATE_IN dd-o-yy FORMAT_DATE_MAP o FONT_ANNOT_PRIMARY +10p
gmt set FORMAT_TIME_PRIMARY_MAP abbreviated PS_CHAR_ENCODING ISOLatin1+

# Pull out a suitable region string in yyy-mm-dd format

wesn=(`gmt info -fT -I50 -C @RHAT_price.csv --FORMAT_DATE_IN=dd-o-yy`)
R="-R${wesn[0]}/${wesn[1]}/${wesn[2]}/${wesn[3]}"

# Lay down the basemap:

gmt psbasemap $R -JX9i/6i -K -Bsx1Y -Bpxa3Of1o -Bpy50+p"$ " \
	-BWSen+t"RedHat (RHT) Stock Price Trend since IPO"+glightgreen > $ps

# Plot main window with open price as red line over yellow envelope of low/highs

gmt set FORMAT_DATE_OUT dd-o-yy
gmt convert -o0,2 -f0T @RHAT_price.csv > RHAT.env
gmt convert -o0,3 -f0T -I -T @RHAT_price.csv >> RHAT.env
gmt psxy -R -J -Gyellow -O -K RHAT.env >> $ps
gmt psxy -R -J @RHAT_price.csv -Wthin,red -O -K >> $ps

# Draw P Wessel's purchase price as line and label it.  Note we temporary switch
# back to default yyyy-mm-dd format since that is what gmt info gave us.

echo "05-May-00	0" > RHAT.pw
echo "05-May-00	300" >> RHAT.pw
gmt psxy -R -J RHAT.pw -Wthinner,- -O -K >> $ps
echo "01-Jan-99	25" > RHAT.pw
echo "01-Jan-02	25" >> RHAT.pw
gmt psxy -R -J RHAT.pw -Wthick,- -O -K >> $ps
gmt set FORMAT_DATE_IN yyyy-mm-dd
echo "${wesn[0]} 25 PW buy" | gmt pstext -R -J -O -K -D1.5i/0.05i -N -F+f12p,Bookman-Demi+jLB >> $ps
gmt set FORMAT_DATE_IN dd-o-yy

# Draw P Wessel's sales price as line and label it.

echo "25-Jun-07	0" > RHAT.pw
echo "25-Jun-07	300" >> RHAT.pw
gmt psxy -R -J RHAT.pw -Wthinner,- -O -K >> $ps
echo "01-Aug-06	23.8852" > RHAT.pw
echo "01-Jan-08	23.8852" >> RHAT.pw
gmt psxy -R -J RHAT.pw -Wthick,- -O -K >> $ps
gmt set FORMAT_DATE_IN yyyy-mm-dd
echo "${wesn[1]} 23.8852 PW sell" | gmt pstext -R -J -O -K -Dj0.8i/0.05i -N \
	-F+f12p,Bookman-Demi+jRB >> $ps
gmt set FORMAT_DATE_IN dd-o-yy

# Get smaller region for insert for trend since 2004

R="-R2004T/${wesn[1]}/${wesn[2]}/40"

# Lay down the basemap, using Finnish annotations and place the insert in the upper right

gmt psbasemap --GMT_LANGUAGE=fi $R -JX6i/3i -Bpxa3Of3o -Bpy10+p"$ " -BESw+glightblue -Bsx1Y \
	-O -K -X3i -Y3i >> $ps

# Again, plot close price as red line over yellow envelope of low/highs

gmt psxy -R -J -Gyellow -O -K RHAT.env >> $ps
gmt psxy -R -J @RHAT_price.csv -Wthin,red -O -K >> $ps

# Draw P Wessel's sales price as dashed line

gmt psxy -R -J RHAT.pw -Wthick,- -O -K >> $ps

# Mark sales date

echo "25-Jun-07	0" > RHAT.pw
echo "25-Jun-07	300" >> RHAT.pw
gmt psxy -R -J RHAT.pw -Wthinner,- -O >> $ps

# Clean up after ourselves:

rm -f RHAT.* gmt.conf
