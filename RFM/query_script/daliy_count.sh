#!/bin/bash     #宣告此script要在 bash 下執行

#算每天的count
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=$(date +"%Y" --date="today") -hiveconf MONTH=$(date +"%m" --date="today") -hiveconf DATE=$(date +"%d" --date="today");


