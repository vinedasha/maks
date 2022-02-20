alter schema schema1 rename to lab_schema1;
alter schema schema2 rename to lab_schema2;
set search_path = lab_schema1;
alter table t1 rename to tab1;
alter table t2 rename to tab2;

set search_path = lab_schema2;
alter table t1 rename to tab1;
alter table t2 rename to tab2;

alter table tab1 rename column z to x;
alter table tab2 rename column z to y; 
