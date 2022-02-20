create sequence mark_id;
create or replace procedure fill_marks()
language plpgsql
as $$
declare
i int;
j int;
begin
for i in (select id from exam)
loop
j = 1 + random() * (5-1);
insert into mark (id,exam_id, stud_id, res)
select nextval('mark_id'), i, id, 2 + random() * (5-2) from student where random() < 0.30;
end loop;
end;
$$;
call fill_marks();