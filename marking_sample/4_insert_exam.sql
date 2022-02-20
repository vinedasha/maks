insert into exam(discip_id,ts) select
1 + random() * (5-1), timestamp '2021-09-01 00:00:00' + random() * (
timestamp '2021-07-01 00:00:00' - timestamp '2021-09-01 00:00:00'
)from generate_series(1, 20);