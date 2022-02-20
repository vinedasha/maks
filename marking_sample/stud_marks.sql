create or replace function stud_marks() returns table(descr text,res int)
language plpgsql
as $$
declare
begin
return query
select d.descr::text, m.res::int from mark as m join exam as x on m.exam_id = x.id join discipline as d on x.discip_id = d.id group by d.descr, m.res;
end;
$$;
create or replace view stud_marks as
select d.descr::text, m.res::int from mark as m join exam as x on m.exam_id = x.id join discipline as d on x.discip_id = d.id group by d.descr, m.res;

select stud_marks();