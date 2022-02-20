create schema schema1;
create schema schema2;
select nspname, usename from pg_namespace join pg_user on usesysid = nspowner;
