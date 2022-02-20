create rule ins_y2021m11r as on insert to noaa_sample.data_part_r
where (datetime >= '2021-11-01' and  datetime <'2021-12-01')
do instead insert into noaa_sample.data_y2021m11r values (new.*);

create rule ins_y2021m12r as on insert to noaa_sample.data_part_r
where (datetime >= '2021-12-01' and  datetime <'2022-01-01')
do instead insert into noaa_sample.data_y2021m12r values (new.*);

create rule ins_y2022m01r as on insert to noaa_sample.data_part_r
where (datetime >= '2022-01-01' and  datetime <'2022-02-01')
do instead insert into noaa_sample.data_y2022m01r values (new.*);