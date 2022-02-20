
drop table fn_00_02;
drop table fn_02_04;
drop table fn_04_06;
drop table fn_06_08;
drop table fn_08_10;
create table lab_partition.fn_00_02 partition of lab_partition.fn for values from (0.0) to (2.0);
create table lab_partition.fn_02_04 partition of  lab_partition.fn for values from (2.0) to (4.0);
create table lab_partition.fn_04_06 partition of  lab_partition.fn for values from (4.0) to (6.0);
create table lab_partition.fn_06_08 partition of  lab_partition.fn for values from (6.0) to (8.0);
create table lab_partition.fn_08_10 partition of  lab_partition.fn for values from (8.0) to (10.0);