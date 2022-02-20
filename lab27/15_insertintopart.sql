insert into noaa_sample.data_part (select station_id, datetime, height, t from noaa_sample.data);

select 'data_part' as "table", count(*) as "rows" from noaa_sample.data_part union
select 'data_part (only)' as "table", count(*)  from only noaa_sample.data_part union
select 'data_y2021m11' as "table", count(*) from  noaa_sample.data_y2021m11 union
select 'data_y2021m12' as "table", count(*) from  noaa_sample.data_y2021m12 union
select 'data_y2022m01' as "table", count(*) from  noaa_sample.data_y2022m01 order by "table";