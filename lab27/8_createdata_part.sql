create table noaa_sample.data_part
(
station_id varchar(20) not null,
datetime timestamp not null,
height float,
t integer
);
create table noaa_sample.data_y2021m11() inherits (noaa_sample.data_part);
create table noaa_sample.data_y2021m12() inherits (noaa_sample.data_part);
create table noaa_sample.data_y2022m01() inherits (noaa_sample.data_part);