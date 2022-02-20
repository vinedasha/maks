create or replace function exam_count() returns table(first text, last text, exams int)
language plpgsql
as $$
declare
begin
return query
select s.first::text, s.last::text, count(x.id)::int as exams from student as s join mark on mark.stud_id = s.id join exam as x on x.id = mark.exam_id group by s.first, s.last;
end;
$$;
select exam_count();