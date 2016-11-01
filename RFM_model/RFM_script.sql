/* Recency */ /* Frequency */ /* Monetary */
/*算 10月的 uid*/
/*僅用9月+10月的orderlist去計算RFM*/
drop table RFM_gohappy_m10;
create table RFM_gohappy_m10 as select t1.uid,MAX(t2.order_date) last_consum_date
       ,datediff(current_date,to_date(MAX(t2.order_date))) as Recency
       ,count(t2.order_date) as Frequency
       ,sum(t2.final_amt) as Monetary
	from gohappy_unima.all_weblog t1 
	join gohappy_unima.all_orderlist t2 
	on t1.uid=t2.uid 
where t1.log_mon_i='2016-10' and (t2.log_mon_i='2016-10' or t2.log_mon_i='2016-09') group by t1.uid ;


/* standerlize RFM */

/*(1) create a min-max table */
create table RFM_minmax as
select MIN(recency) min_R,MAX(recency) max_R
      ,MIN(frequency) min_F,MAX(frequency) max_F
      ,MIN(monetary) min_M,MAX(monetary) max_M
from rfm_gohappy_m10
group by year(last_consum_date)


/*(2) compute RFM total score */
create table RFM_score as 
select *,w1.std_r + w1.std_f + w1.std_m as RFM_score from 
  (select uid,(t1.recency-t2.min_r)/(t2.max_r-t2.min_r) as std_r
         ,(t1.frequency-t2.min_f)/(t2.max_f-t2.min_f) as std_f
         ,(t1.monetary-t2.min_m)/(t2.max_m-t2.min_m) as std_m
  from rfm_gohappy_m10 t1 cross join rfm_minmax t2
  ) as w1
  
/* 用RFM_score分群,先分成五群 */
create table 
select group_index,count(group_index) as group_num
from 
(select uid,IF(rfm_score<0.2,1,IF(rfm_score<0.4,2,IF(rfm_score<0.6,3,IF(rfm_score<0.8,4,5)))) as group_index
from joshua_453041.rfm_score
) as t1
group by group_index


/* 開一個table RFM_record 來裝每天算好的值 */












