#!/bin/zsh

NW="192.168"
INTERFACE="en0"

lsarp=`arp-scan -I ${INTERFACE} -l | grep ${NW} | sort -V | grep -v Interface`
_res=`echo ${lsarp} | awk -v 'OFS=,' 'BEGIN {FS="\t"}{print $2,$3}' | sed -e "s/ /_/g" | sed -e "s/://g"` 
array=($(echo $_res))

thisdevice="`arp-scan -I ${INTERFACE} -l | grep Interface | awk '{print $6}' | sed -e"s/,//g" | sed -e "s/://g"`,`hostname`"
array=("${array[@]}" ${thisdevice}) 

#echo ${array[@]}
for row in ${array[@]}
do
    echo "${row}"
done
