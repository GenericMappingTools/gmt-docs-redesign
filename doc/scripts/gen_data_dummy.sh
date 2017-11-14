#!/bin/bash
#
# $Id: gen_data_dummy.sh 18501 2017-06-29 05:08:37Z pwessel $
# This script makes the dummy data sets needed in GMT_linear.sh GMT_log.sh GMT_pow.sh
#
gmt math -T0/100/1  T SQRT = sqrt.txt
gmt math -T0/100/10 T SQRT = sqrt10.txt
