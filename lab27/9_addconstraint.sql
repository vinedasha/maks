alter table noaa_sample.data_y2021m11 add constraint chk_range21m11
check (datetime >= '2021-11-01' and datetime <'2021-12-01');

alter table noaa_sample.data_y2021m12 add constraint chk_range21m11
check (datetime >= '2021-12-01' and datetime <'2022-01-01');

alter table noaa_sample.data_y2022m01 add constraint chk_range21m11
check (datetime >= '2022-01-01' and datetime <'2022-02-01');


create unique index uq_idx21m11 on  noaa_sample.data_y2021m11 (station_id, datetime);

create unique index uq_idx21m12 on  noaa_sample.data_y2021m12 (station_id, datetime);
	
create unique index uq_idx22m1 on  noaa_sample.data_y2022m01 (station_id, datetime);