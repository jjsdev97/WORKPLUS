create table POSITION(
P_NUM VARCHAR2(30) PRIMARY KEY,
M_JOB VARCHAR2(30) 

);

DROP TABLE POSITION PURGE;

select * from POSITION;

insert into POSITION values('1','대표');
insert into POSITION values('2','부장');
insert into POSITION values('3','과장');
insert into POSITION values('4','대리');
insert into POSITION values('5','사원');

