insert into noaa_sample.data_part_r (select station_id, datetime, height, t from noaa_sample.data);

select 'data_part_r' as "table", count(*) as "rows" from noaa_sample.data_part_r union
select 'data_part_r (only)' as "table", count(*) as "rows" from only noaa_sample.data_part_r union
select 'data_y2021m11r' as "table", count(*) as "rows" from  noaa_sample.data_y2021m11r union
select 'data_y2021m12r' as "table", count(*) as "rows" from  noaa_sample.data_y2021m12r union
select 'data_y2022m01r' as "table", count(*) as "rows" from  noaa_sample.data_y2022m01r order by "table";