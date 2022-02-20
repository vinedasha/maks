drop foreign table noaa_sample.station_csv;
drop foreign table  noaa_sample.owner_csv;
drop foreign table  noaa_sample.program_csv;

create foreign table noaa_sample.station_csv
(
id varchar(100) not null,
"owner" integer not null,
"program" integer not null,
"lat" float,
"lon" float,
"evel" float,
"data" char,
status char,
"type" varchar(50),
"name" varchar(256)
)server file_server options (filename '/home/user/lab27/station.csv', format 'csv', null 'NULL');


create foreign table  noaa_sample.program_csv
(id integer,
"name" varchar(256)
)server file_server options (filename '/home/user/lab27/program.csv', format 'csv', null 'NULL');


create foreign table  noaa_sample.owner_csv
(id integer,
"name" varchar(256)
)server file_server options (filename '/home/user/lab27/owner.csv', format 'csv', null 'NULL');