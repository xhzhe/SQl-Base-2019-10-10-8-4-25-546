create tablespace student_examination_sys datafile 'D:\oracle\student_examination_sys.dbf' size 200M;
create table student
(
    id   numeric(12)  not null,
    name varchar2(50) not null,
    age  numeric(5)   not null,
    sex  varchar2(10) not null,
    primary key (id)
);
create table subject
(
    id          numeric(12)   not null,
    subject     varchar2(50)  not null,
    teacher     varchar2(50)  not null,
    description varchar2(500) not null,
    primary key (id)
);
create table score
(
    id         numeric(12) not null,
    student_id numeric(12) not null,
    subject_id numeric(12) not null,
    score      numeric(5)  not null,
    primary key (id),
    foreign key (student_id) references student (id),
    foreign key (subject_id) references subject (id)
);