insert into schema2.t1 (z) select 10 + random() * 5 from generate_series(1,5);
insert into schema2.t2 (z) select 20 + random() * 5 from generate_series(1,5);
insert into schema1.t2 (w) select 30 + random() * 5 from generate_series(1,5);
insert into schema1.t1 (z) select 40 + random() * 5 from generate_series(1,5);
 
