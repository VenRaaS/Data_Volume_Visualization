#!/bin/bash     #宣告此script要在 bash 下執行

#產生2016-12整個月的 rfm_label
hive -f RFM/batch/rfm_relabel.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=01;

#算每天的count
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=01;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=02;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=03;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=04;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=05;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=06;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=07;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=08;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=09;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=10;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=11;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=12;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=13;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=14;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=15;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=16;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=17;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=18;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=19;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=20;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=21;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=22;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=23;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=24;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=25;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=26;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=27;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=28;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=29;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=30;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2016 -hiveconf MONTH=12 -hiveconf DATE=31;

#產生2017-01整個月的 rfm_label
hive -f RFM/batch/rfm_relabel.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=01;

#算每天的count
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=01;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=02;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=03;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=04;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=05;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=06;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=07;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=08;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=09;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=10;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=11;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=12;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=13;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=14;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=15;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=16;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=17;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=18;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=19;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=20;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=21;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=22;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=23;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=24;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=25;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=26;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=27;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=28;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=29;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=30;
hive -f RFM/batch/RFM_batch_script.sql -hiveconf YEAR=2017 -hiveconf MONTH=01 -hiveconf DATE=31;



