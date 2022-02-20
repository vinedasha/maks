create table noaa_sample.data_part_r
(
station_id varchar(20) not null,
datetime timestamp not null,
height float,
t integer
);
create table noaa_sample.data_y2021m11r() inherits (noaa_sample.data_part_r);
create table noaa_sample.data_y2021m12r() inherits (noaa_sample.data_part_r);
create table noaa_sample.data_y2022m01r() inherits (noaa_sample.data_part_r);