create table lab_partition.fn_10_12 (like lab_partition.fn including defaults including constraints) tablespace fastspace;
alter table lab_partition.fn_10_12 add constraint range10 check (x>=10.0 and x<12.0);