--删除
 drop sequence seq_aid;
  drop sequence seq_usid;
  drop sequence seq_bid;
  drop sequence seq_ssid;

  drop table admin;
  drop table collects;
  drop table menu;
  drop table discuss;
  drop table book;
  
  drop table users;
  drop table types;

CREATE SEQUENCE seq_aid START WITH 1001;--图书管理员编号序列 
CREATE SEQUENCE seq_usid START WITH 1001;--用户编号
--图书管理员表
CREATE TABLE admin(
       aid VARCHAR2(20) PRIMARY KEY,--管理员编号
       apenname VARCHAR2(30) UNIQUE NOT NULL,--用户名
       apwd varchar2(20) NOT NULL,--密码
);
--用户表
CREATE TABLE users(
       usid Varchar2(20) PRIMARY KEY,--用户编号
       uname VARCHAR2(30) UNIQUE NOT NULL,--用户名
       uemail varchar(50) ,--邮箱
       upwd varchar2(80) NOT NULL--密码
);
select * from users
--书表
create sequence seq_bid start with 1001  increment by 1;

create table book(
       bid varchar2(20) primary key,--书的编号
       bname varchar2(50),--书的名字
       bdesc varchar2(800),--书的简介
       bdate date,--书的发布日期
       bcopyright varchar2(50),--版权
       burl varchar2(50), --书的访问地址
       bauthor varchar2(20),--作者名
       ssid varchar2(20) REFERENCES types(ssid),--分类编号
       bpic  blob    --书的封面
);

--收藏表
CREATE TABLE collects(
       usid Varchar2(20) REFERENCES usertable(usid),--用户编号
       bid  Varchar2(20) REFERENCES book(bid),--书编号
       udate DATE --收藏日期    
);

--分类表
create sequence seq_ssid start with 1001  increment by 1;

create table types(
       ssid varchar2(20) primary key,--分类的编号
       sname varchar2(50)--书的类名
);

--目录表
create TABLE menu(
       mid varchar2(20),--章节编号
       mname varchar2(50),--章名
       bid varchar2(20) REFERENCES book(bid),--书的编号
       bcontent varchar2(max) --内容
);

--评论表
create table discuss(
       usid varchar2(50) REFERENCES usertable(usid),--用户编号
       bid varchar2(20) REFERENCES book(bid),--书的编号
       dcontent varchar2(100),-- 书评
       dtime date--评论时间
);
select * from admin;--users book  collects  types  menu discuss
select * from book
--插入数据
insert into admin values('A'||seq_aid.nextval,'Mold','m');
insert into admin values('A'||seq_aid.nextval,'Jol','m');
insert into admin values('A'||seq_aid.nextval,'唐七公子','m');

insert into users values('U'||seq_usid.nextval,'李类','1138864456@qq.com','405bef64f90e39ddc8f8c9655f480e82dfddd60c');
insert into users values('U'||seq_usid.nextval,'陈看','1441964048@qq.com','405bef64f90e39ddc8f8c9655f480e82dfddd60c');
insert into users values('U'||seq_usid.nextval,'ds','1441962248@qq.com','u');

insert into types values('S'||seq_ssid.nextval,'名著');
insert into types values('S'||seq_ssid.nextval,'科幻');
insert into types values('S'||seq_ssid.nextval,'爱情');
insert into types values('S'||seq_ssid.nextval,'励志');
insert into types values('S'||seq_ssid.nextval,'学术');
insert into types values('S'||seq_ssid.nextval,'杂志');
insert into types values('S'||seq_ssid.nextval,'传记');
insert into types values('S'||seq_ssid.nextval,'科学');


insert into  book values('B'||seq_bid.nextval,'西游记','《西游记》是一部中国古典神魔小说，为中国四大名著之一。书中讲述唐朝法师西天取经的故事',to_date('1950-03-15','yyyy-MM-dd'),'新大纲有限公司','王凯','S1001',null);
insert into  book values('B'||seq_bid.nextval,'三生三世十里桃花','该书讲述了青丘帝姬白浅和九重天太子夜华的三生爱恨，三世纠葛。',to_date('2011-09-15','yyyy-MM-dd'),'到撒无','S1003',null);
insert into  book values('B'||seq_bid.nextval,'盗墓笔记','讲述了醉心于古建筑的吴邪在三叔的带领下，与张起灵、阿宁、潘子、王胖子，开始了一场前所未有的冒险故事',to_date('2006-03-15','yyyy-MM-dd'),'都是','S1002',null);

insert into collects values('U1001','B1001',to_date('2016-03-19','yyyy-MM-dd'));
insert into collects values('U1001','B1002',to_date('2015-10-01','yyyy-MM-dd'));
insert into collects values('U1001','B1003',to_date('2015-07-19','yyyy-MM-dd'));
insert into collects values('U1002','B1001',to_date('2016-04-9','yyyy-MM-dd'));

insert into discuss values('U1001','B1001','很有意思',to_date('2016-12-9','yyyy-MM-dd'));
insert into discuss values('U1001','B1002','不错',to_date('2016-11-9','yyyy-MM-dd'));

insert into menu values('M1','大闹天宫','B1001',null);
insert into menu values('M2','蟠桃宴','B1001',null);
insert into menu values('M3','五指山','B1001',null);
insert into menu values('M4','取经','B1001',null);
