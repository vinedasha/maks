create or replace view  noaa_sample.station_count as select owner.name, count(station.id) as count from  noaa_sample.owner inner join  noaa_sample.station on  noaa_sample.owner.id =  noaa_sample.station.owner_id group by  noaa_sample.owner.name order by count desc;

create or replace view  noaa_sample.stations_w_dart_data as 
select id from noaa_sample.station where type = 'dart' and data = 'y';