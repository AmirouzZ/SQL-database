CREATE TABLE STUDENT ( 
Fname VARCHAR(20) NOT NULL,
Lname VARCHAR(20) NOT NULL,
CITY nvarchar(30),
birthday date,
sid int identity(1,1) primary key
);
CREATE TABLE COURSE (
cname VARCHAR(20) NOT NULL,
semester int ,
cid int identity (1,1) primary key

); 
CREATE TABLE marks (
mark int  NOT NULL,
m_sid int  NOT NULL,
m_cid int  NOT NULL,
primary key (m_sid ,m_cid),
foreign key (m_sid) References STUDENT (sid),
foreign key (m_cid) References COURSE (cid),
);
insert into STUDENT(Fname,Lname,CITY,birthday) values ('Sanna','Ali','Aleppo','2001-02-12');
insert into STUDENT(Fname,Lname,CITY,birthday) values ('Ahamd','Sliman','Hama','2000-10-02');
insert into STUDENT(Fname,Lname,CITY,birthday) values ('Walaa','Sliman','Hama','2002-06-22');
insert into COURSE (cname,semester) values ('java',1 ),('web',2),('data',3);
insert into marks(mark,m_sid,m_cid) values (50,1,1),(82,1,2),(90,1,3),(11,2,1),(83,2,2),(88,2,3),(47,3,1),(78,3,2),(91,3,3);
select cname,semester from COURSE;
select Fname+' '+Lname as fullname,YEAR(GETDATE())-YEAR(birthday) from STUDENT;
--select cname, count(*) from COURSE marks where cid='m_cid' group by cid,cname having (marks.mark)>=60
--select cname,COUNT(*) from COURSE marks where cid='m_cid' and (marks.mark)<60 order by (mark);
--alter table student add char gender value='f' or value='m';
--alter table marks m_sid=1