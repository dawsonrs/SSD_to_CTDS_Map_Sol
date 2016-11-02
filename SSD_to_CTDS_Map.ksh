#!/bin/ksh
#######bash or ksh interpreter will work here ########

# This script will map ssd disk names to ctds disk names for easy reference
## example usage and output ##
#
#  ./ssd_to_ctds_map.ksh
# ===============================
# =  LUN Name to SSD =
# ===============================
#
# sd0     c0t0d0
# sd3     c0t2d0
# ssd0    c1t2150000B5D6A038Dd0
# ssd1    c1t2150000B5D6A038Dd2
# ssd2    c1t2150000B5D6A038Dd1
# ssd3    c1t2150000B5D6A038Dd3
# ssd5    c1t500000E0D4032096d14
# ssd6    c1t500000E0D4032096d13
# ssd7    c1t500000E0D4032096d12
# ssd8    c1t500000E0D4032096d11
# ssd9    c1t500000E0DA809F38d3
# ssd10   c1t500000E0DA809F38d2
# ssd11   c1t500000E0DA809F38d1
# ssd12   c1t500000E0DA809F38d0
# ssd13   c1t500000E0DA809F31d3
# ssd14   c1t500000E0DA809F31d2
# ssd15   c1t500000E0DA809F31d1
# ssd16   c1t500000E0DA809F31d0
#

echo "==============================="
echo "=  LUN Name to SSD ="
echo "==============================="
echo
/usr/bin/iostat -E | grep Soft | awk '{ print $1}' > /tmp/a
iostat -En | grep Soft|awk '{ print $1 }' > /tmp/b 
paste /tmp/a /tmp/b
/usr/bin/rm /tmp/a /tmp/b
#

