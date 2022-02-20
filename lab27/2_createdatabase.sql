drop table  noaa_sample.owner cascade;
drop table  noaa_sample.station cascade;
drop table  noaa_sample.program cascade;

create table noaa_sample.owner(id int primary key, name varchar(256));
create table noaa_sample.program(id int primary key, name varchar(256));
create table noaa_sample.station(id varchar primary key,
owner_id int,
program_id int,
lat float,
lon float,
evel float,
data char,
status char,
type varchar(256),
name varchar(256),
constraint fc_owner
foreign key (owner_id)
references noaa_sample.owner(id),
constraint fc_programm
foreign key(program_id)
references noaa_sample.program(id));
create table noaa_sample.data
(id int primary key,
station_id int,
datetime timestamp,
height float,
t int,
constraint fc_stat
foreign key(station_id)
references noaa_sample.station(id));