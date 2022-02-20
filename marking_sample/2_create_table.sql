drop table if exists student cascade;
drop table if exists discipline cascade;
drop table if exists mark cascade;
drop table if exists exam cascade;


create table student (id serial primary key,
first varchar(50),
last varchar(50),
sex char(1)
);

create table mark
(id serial primary key,
exam_id int,
stud_id int,
res integer);


create table marking_sample.exam(
id serial primary key,
discip_id int,
ts timestamp
);

create table marking_sample.discipline(
id serial primary key,
descr varchar(50)
);

alter table mark add  foreign key (stud_id) references student(id);
alter table mark add  foreign key (exam_id) references exam(id);
alter table exam add  foreign key (discip_id) references discipline(id);
