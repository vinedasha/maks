create or replace function noaa_sample.data_insert_func()
returns trigger 
language plpgsql
as $$
begin

	if(new.datetime >= '2021-11-01' and new.datetime <'2021-12-01') then
insert into noaa_sample.data_y2021m11 values (new.*);
elseif(new,datetime >= '2021-12-01' and new.datetime <'2022-01-01') then
insert into noaa_sample.data_y2021m12 values (new.*);
elseif(new,datetime >= '2022-01-01' and new.datetime <'2022-02-01') then
insert into noaa_sample.data_y2022m01 values (new.*);
else
raise exception 'datetime is out of range';
end if;
return null;
end;
$$;

create trigger data_insert_trig before insert on noaa_sample.data_part for each row execute procedure noaa_sample.data_insert_func();
