create table trn_widetable as(
with table_status as (
	select * 
	from( 
		select 
			waybill_code, 
			create_time, 
			tsl.id_status, 
			ts.status,
			row_number () over (partition by tsl.waybill_code order by tsl.create_time)as "row_num"
		from trn_status_log tsl 
		join trn_status ts on tsl.id_status = ts.id_status
	) a
	where row_num = 1
)select 
	tw.waybill_code,
	to_timestamp(tw.create_time, 'YYYYMMDDHH24MISS') as create_time,
	tw.id_warehouse, tw2.warehouse_name, 
	tc.id_cat, tc.cat_desc ,
	tp.id_payment_type, tp.payment_desc,
	tc2.id_card,
	case 
		when tp.payment_desc = 'Cash' then 'CSOD' else tc2.card_name 
	end card_name,
	tc3.id_customer, concat(tc3.first_name, ' ', tc3.last_name) as FullName,
	tw.weight,
	tw.fee,
	tw.province_code, tl3.province_name,
	tw.city_code , tl3.city_name,
	tw.district_code, tl3.district_name,
	fs2.status,
	to_timestamp(fs2.create_time, 'YYYYMMDDHH24MISS') as last_status_timestamp
from trn_waybill tw 
join trn_warehouse tw2 on tw.id_warehouse = tw2.id_warehouse
join trn_cat tc on tw.id_cat = tc.id_cat
join trn_payment tp on tw.id_payment_type = tp.id_payment_type
left join trn_card tc2 on tw.id_card = tc2.id_card 
join trn_customer tc3 on tw.id_customer = tc3.id_customer
join trn_location tl3 on tw.district_code = tl3.distric_id and tw.city_code = tl3.city_id and tw.district_code = tl3.distric_id  
left join table_status fs2 on tw.waybill_code = fs2.waybill_code);


select * from trn_widetable tw ;

