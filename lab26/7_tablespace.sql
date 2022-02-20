create tablespace fastspace location '/home/user/lab26/free/';
alter table lab_partition.fn_00_02 set tablespace fastspace;
alter table lab_partition.fn_02_04 set tablespace fastspace;