insert into noaa_sample.owner select * from  noaa_sample.owner_csv on conflict (id) do update set name = excluded.name;
insert into noaa_sample.program select * from  noaa_sample.program_csv on conflict (id) do update set name = excluded.name;
insert into noaa_sample.station select * from  noaa_sample.station_csv on conflict (id) do update set name = excluded.name;