--self-define daily data overview

#計算weblog&reclog&orderlist的count
select * from ( select 'weblog_count' item,date_format(api_logtime,'yyyy-MM-dd') subdate,count(*) num from gohappy_unima.all_weblog where log_mon_i='2016-09' group by date_format(api_logtime,'yyyy-MM-dd') union select 'reclog_count' item,date_format(insert_dt,'yyyy-MM-dd') subdate,count(*) num from gohappy_unima.all_reclog where log_mon_i='2016-09' group by date_format(insert_dt,'yyyy-MM-dd') union select 'order_count' item,date_format(order_date,'yyyy-MM-dd') subdate,count(*) num from gohappy_unima.all_orderlist where log_mon_i='2016-09' group by date_format(order_date,'yyyy-MM-dd')) as t1 order by subdate,item 

#查詢weblog的page_type分佈
select page_type,date_format(api_logtime,'yyyy-MM-dd') subdate,count(page_type) count from gohappy_unima.all_weblog where log_mon_i='2016-09' group by date_format(api_logtime,'yyyy-MM-dd'),page_type order by page_type,subdate  

#查詢reclog的rec_pos分佈
select rec_pos,date_format(insert_dt,'yyyy-MM-dd') subdate,count(rec_pos) count from gohappy_unima.all_reclog where log_mon_i='2016-08' group by date_format(insert_dt,'yyyy-MM-dd'),rec_pos order by rec_pos,subdate  

#查詢weblog的from_rec有出現的recomd_id,在recomdlog中找不到的個數

select 'from_rec_miss' as item,subdate,count(*) as num from
(select * from 
(select distinct from_rec,date_format(api_logtime,'yyyy-MM-dd') subdate from gohappy_unima.all_weblog
where log_mon_i='2016-08' and length(from_rec)!=0) as t1

left join 

(select recomd_id from gohappy_unima.all_reclog where log_mon_i='2016-08') as t2

on t1.from_rec = t2.recomd_id

where t2.recomd_id is NULL
) w2

group by subdate
order by subdate

-- select subdate,count(*) as num from (select * from (select distinct from_rec,date_format(api_logtime,'yyyy-MM-dd') subdate from gohappy_unima.all_weblog where log_mon_i='2016-08' and length(from_rec)!=0) as t1 left join (select recomd_id from gohappy_unima.all_reclog where log_mon_i='2016-08') as t2 on t1.from_rec = t2.recomd_id where t2.recomd_id is NULL ) w2 group by subdate order by subdate

#查詢weblog的now_rec有出現的recomd_id,在reclog中找不到的個數
select 'now_rec_miss' as item,subdate,count(*) as num from
(select * from 
(select distinct get_json_object(now_rec,'$\[0].rec') as now_rec,date_format(api_logtime,'yyyy-MM-dd') subdate from gohappy_unima.all_weblog
where log_mon_i='2016-08' and length(now_rec)!=0) as t1

left join 

(select recomd_id from gohappy_unima.all_reclog where log_mon_i='2016-08') as t2

on t1.now_rec = t2.recomd_id

where t2.recomd_id is NULL
) w2

group by subdate
order by subdate

-- select 'now_rec_miss' as item,subdate,count(*) as num from (select * from (select distinct get_json_object(now_rec,'$\[0].rec') as now_rec,date_format(api_logtime,'yyyy-MM-dd') subdate from gohappy_unima.all_weblog where log_mon_i='2016-08' and length(now_rec)!=0) as t1 left join (select recomd_id from gohappy_unima.all_reclog where log_mon_i='2016-08') as t2 on t1.now_rec = t2.recomd_id where t2.recomd_id is NULL) w2 group by subdate order by subdate



select 'now_rec_miss' as item,subdate,count(*) as num from (select * from (select distinct from_rec,date_format(api_logtime,'yyyy-MM-dd') subdate from gohappy_unima.all_weblog where log_mon_i='2016-08' and length(from_rec)!=0) as t1 left join (select recomd_id from gohappy_unima.all_reclog where log_mon_i='2016-08') as t2 on t1.from_rec = t2.recomd_id where t2.recomd_id is NULL ) w2 group by subdate union all select 'from_rec_miss' as item,subdate,count(*) as num from (select * from (select distinct get_json_object(now_rec,'$\[0].rec') as now_rec,date_format(api_logtime,'yyyy-MM-dd') subdate from gohappy_unima.all_weblog where log_mon_i='2016-08' and length(now_rec)!=0) as t1 left join (select recomd_id from gohappy_unima.all_reclog where log_mon_i='2016-08') as t2 on t1.now_rec = t2.recomd_id where t2.recomd_id is NULL) w2 group by subdate order by subdate









