create or replace function final_marks() returns table(descr text,res int)
language plpgsql
as $$
declare
begin
return query

end;
$$;
select stud_final();