#!/bin/bash     #宣告此script要在 bash 下執行

#產生2016-12整個月的 rfm_label
hive -f RFM/batch/rfm_relabel.sql -hiveconf YEAR=$(date +"%Y" --date="today") -hiveconf MONTH=$(date +"%m" --date="today") -hiveconf DATE=$(date +"%d" --date="today");
