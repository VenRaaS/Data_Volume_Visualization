/* Recency */ /* Frequency */ /* Monetary */
/*算 10月的 uid*/
/*僅用9月+10月的orderlist去計算RFM*/

create table RFM_gohappy_m10 as select t1.uid,MAX(t2.order_date) last_consum_date
       ,datediff(current_date,to_date(MAX(t2.order_date))) Recency
       ,count(t2.order_date) as Frequency
       ,sum(t2.final_amt) Monetary
	from gohappy_unima.all_weblog t1 
	left join all_orderlist t2 
	on t1.uid=t2.uid 
where t1.log_mon_i='2016-10' and (t2.log_mon_i='2016-10' or t2.log_mon_i='2016-09') group by t1.uid 
















