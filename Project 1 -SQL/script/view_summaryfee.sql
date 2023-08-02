create or replace view view_summaryfee as
select 
	DATE(to_timestamp(tw.create_time , 'YYYYMMDDHH24MISS')) AS days,
	tw2.warehouse_name,
	sum(fee) as total_fee,
	round(avg(fee),2) as average_fee
from trn_waybill tw 
join trn_warehouse tw2 on tw.id_warehouse = tw2.id_warehouse
group by tw2.warehouse_name, days
order by tw2.warehouse_name, days;

select * from view_summaryfee vs ;
--	extract(day from to_timestamp(tw.create_time, 'YYYYMMDDHH24MISS')) as days,