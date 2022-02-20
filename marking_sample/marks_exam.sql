create or replace function exam_marks() returns table(descr text, res int, ts timestamp)
language plpgsql
as $$
declare
begin
return query
select d.descr::text, m.res::int, x.ts::timestamp from discipline as d join exam as x on x.discip_id=d.id join mark as m on m.exam_id = x.id group by d.descr, m.res, x.ts;
end;
$$;
create or replace view exam_marks as
select d.descr::text, m.res::int, x.ts::timestamp from discipline as d join exam as x on x.discip_id=d.id join mark as m on m.exam_id = x.id group by d.descr, m.res, x.ts;

select exam_marks();