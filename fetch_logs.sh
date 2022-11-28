#!/bin/bash
start=$1
end=$2

start=$(date -d $start +%Y%m%d)
end=$(date -d $end +%Y%m%d)

while [[ $start -le $end ]]
do
	day=$(date -d $start +"%m%d%y")	
	echo $day
	wget "https://police.ucdavis.edu/sites/g/files/dgvnsk9526/files/inline-files/"$day"cl.pdf"
	start=$(date -d"$start + 1 day" +"%Y%m%d")
done
