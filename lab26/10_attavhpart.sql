set search_path = 'lab_partition', 'lab_partition_tabs';
alter table fn attach partition fn_02_04 for values from (2.0) to (4.0);
alter table fn attach partition fn_06_08 for values from (6.0) to (8.0);