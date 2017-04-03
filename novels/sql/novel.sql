--ɾ��
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

CREATE SEQUENCE seq_aid START WITH 1001;--ͼ�����Ա������� 
CREATE SEQUENCE seq_usid START WITH 1001;--�û����
--ͼ�����Ա��
CREATE TABLE admin(
       aid VARCHAR2(20) PRIMARY KEY,--����Ա���
       apenname VARCHAR2(30) UNIQUE NOT NULL,--�û���
       apwd varchar2(20) NOT NULL,--����
);
--�û���
CREATE TABLE users(
       usid Varchar2(20) PRIMARY KEY,--�û����
       uname VARCHAR2(30) UNIQUE NOT NULL,--�û���
       uemail varchar(50) ,--����
       upwd varchar2(80) NOT NULL--����
);
select * from users
--���
create sequence seq_bid start with 1001  increment by 1;

create table book(
       bid varchar2(20) primary key,--��ı��
       bname varchar2(50),--�������
       bdesc varchar2(800),--��ļ��
       bdate date,--��ķ�������
       bcopyright varchar2(50),--��Ȩ
       burl varchar2(50), --��ķ��ʵ�ַ
       bauthor varchar2(20),--������
       ssid varchar2(20) REFERENCES types(ssid),--������
       bpic  blob    --��ķ���
);

--�ղر�
CREATE TABLE collects(
       usid Varchar2(20) REFERENCES usertable(usid),--�û����
       bid  Varchar2(20) REFERENCES book(bid),--����
       udate DATE --�ղ�����    
);

--�����
create sequence seq_ssid start with 1001  increment by 1;

create table types(
       ssid varchar2(20) primary key,--����ı��
       sname varchar2(50)--�������
);

--Ŀ¼��
create TABLE menu(
       mid varchar2(20),--�½ڱ��
       mname varchar2(50),--����
       bid varchar2(20) REFERENCES book(bid),--��ı��
       bcontent varchar2(max) --����
);

--���۱�
create table discuss(
       usid varchar2(50) REFERENCES usertable(usid),--�û����
       bid varchar2(20) REFERENCES book(bid),--��ı��
       dcontent varchar2(100),-- ����
       dtime date--����ʱ��
);
select * from admin;--users book  collects  types  menu discuss
select * from book
--��������
insert into admin values('A'||seq_aid.nextval,'Mold','m');
insert into admin values('A'||seq_aid.nextval,'Jol','m');
insert into admin values('A'||seq_aid.nextval,'���߹���','m');

insert into users values('U'||seq_usid.nextval,'����','1138864456@qq.com','405bef64f90e39ddc8f8c9655f480e82dfddd60c');
insert into users values('U'||seq_usid.nextval,'�¿�','1441964048@qq.com','405bef64f90e39ddc8f8c9655f480e82dfddd60c');
insert into users values('U'||seq_usid.nextval,'ds','1441962248@qq.com','u');

insert into types values('S'||seq_ssid.nextval,'����');
insert into types values('S'||seq_ssid.nextval,'�ƻ�');
insert into types values('S'||seq_ssid.nextval,'����');
insert into types values('S'||seq_ssid.nextval,'��־');
insert into types values('S'||seq_ssid.nextval,'ѧ��');
insert into types values('S'||seq_ssid.nextval,'��־');
insert into types values('S'||seq_ssid.nextval,'����');
insert into types values('S'||seq_ssid.nextval,'��ѧ');


insert into  book values('B'||seq_bid.nextval,'���μ�','�����μǡ���һ���й��ŵ���ħС˵��Ϊ�й��Ĵ�����֮һ�����н����Ƴ���ʦ����ȡ���Ĺ���',to_date('1950-03-15','yyyy-MM-dd'),'�´�����޹�˾','����','S1001',null);
insert into  book values('B'||seq_bid.nextval,'��������ʮ���һ�','���齲��������ۼ���ǳ�;�����̫��ҹ�����������ޣ���������',to_date('2011-09-15','yyyy-MM-dd'),'������','S1003',null);
insert into  book values('B'||seq_bid.nextval,'��Ĺ�ʼ�','�����������ڹŽ�������а������Ĵ����£��������顢���������ӡ������ӣ���ʼ��һ��ǰ��δ�е�ð�չ���',to_date('2006-03-15','yyyy-MM-dd'),'����','S1002',null);

insert into collects values('U1001','B1001',to_date('2016-03-19','yyyy-MM-dd'));
insert into collects values('U1001','B1002',to_date('2015-10-01','yyyy-MM-dd'));
insert into collects values('U1001','B1003',to_date('2015-07-19','yyyy-MM-dd'));
insert into collects values('U1002','B1001',to_date('2016-04-9','yyyy-MM-dd'));

insert into discuss values('U1001','B1001','������˼',to_date('2016-12-9','yyyy-MM-dd'));
insert into discuss values('U1001','B1002','����',to_date('2016-11-9','yyyy-MM-dd'));

insert into menu values('M1','�����칬','B1001',null);
insert into menu values('M2','�����','B1001',null);
insert into menu values('M3','��ָɽ','B1001',null);
insert into menu values('M4','ȡ��','B1001',null);
