create table trn_location as(
with province as(
	select code as prov_id, areaname as province_name, length(code) as len_code
from "location" l
where length(code) = 2
), city as(
	select code city_id, areaname as city_name, length(code) as len_city_code
from "location" l
where length(code) = 5
), district as(
	select code as distric_id, areaname as district_name, length(code) as len_dis_code
from "location" l
where length(code) = 8
)

select p.prov_id, p.province_name, c.city_id, c.city_name, d.distric_id, d.district_name
from province p
join city c on
p.prov_id = left(c.city_id, 2)
join district d on
left(c.city_id, 5) = left(d.distric_id, 5));

-------------------------------------------------------------------------------------------------

update project1.trn_location
set prov_id = replace(prov_id, '.', ''),
	city_id = replace(city_id, '.', ''),
	distric_id = replace(distric_id, '.','')
where prov_id is not null or city_id is not null or distric_id is not null;
	
alter table project1.trn_location
	alter column prov_id type INT using prov_id::int,
	alter column city_id type INT using city_id::int,
	alter column distric_id type INT using distric_id::int ;

select * from trn_location tl ;




