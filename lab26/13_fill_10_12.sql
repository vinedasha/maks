insert into lab_partition.fn_10_12 select 10 + x::float / (200 + 1) * 2.0 from generate_series(1, 200) as x;
update lab_partition.fn_10_12  set y = lab_partition.f2(x);