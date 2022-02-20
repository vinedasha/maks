create or replace function avg_marks() returns table(first text, last text, avg double precision)
language plpgsql
as $$
declare
begin
return query
select s.first::text, s.last::text, round(avg(m.res),3)::double precision from student as s join mark as m on m.stud_id = s.id group by s.first, s.last;
end;
$$;
create or replace view avg_marks as 
select s.first::text, s.last::text, round(avg(m.res),3)::double precision from student as s join mark as m on m.stud_id = s.id group by s.first, s.last;

select avg_marks();