alter table noaa_sample.data_y2021m11r add constraint chk_range21m11
check (datetime >= '2021-11-01' and datetime <'2021-12-01');

alter table noaa_sample.data_y2021m12r add constraint chk_range21m11
check (datetime >= '2021-12-01' and datetime <'2022-01-01');

alter table noaa_sample.data_y2022m01r add constraint chk_range21m11
check (datetime >= '2022-01-01' and datetime <'2022-02-01');


create unique index uq_idx21m11r on  noaa_sample.data_y2021m11r (station_id, datetime);

create unique index uq_idx21m12r on  noaa_sample.data_y2021m12r (station_id, datetime);
	
create unique index uq_idx22m1r on  noaa_sample.data_y2022m01r (station_id, datetime);