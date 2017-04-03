drop sequence seq_users;
drop table users;

create sequence seq_users start with 10000;

create table users(
     id varchar2(40 char) primary key,
     name varchar2(20 char) not null,
     password varchar2(40 char) not null,
     birthday varchar2(20 char)not null, 
     gender varchar2(4 char), 
     career varchar2(20 char), 
     address varchar2(50 char), 
     mobile varchar2(20 char),
     picPath varchar2(200)
);

insert into users
select seq_users.nextval||'', 
dbms_random.string('l',dbms_random.value(5, 20)),'aaaaaa',
to_char(add_months(sysdate, dbms_random.value(12*18, 12*50) * -1), 'yyyy-MM-dd'),
decode(ceil(dbms_random.value(0, 2)), 1, '��', 'Ů'),
decode(ceil(dbms_random.value(0, 6)), 1, '����Ա', 2, '����Ա', 3, '����Ա', 4, '���Ա', 5, '����Ա', '����Ա'),
decode(ceil(dbms_random.value(0, 6)), 1, '����', 2, '����', 3, '�㶫', 4, '����', 5, '����', '�Ϻ�'),
'180'||ceil(dbms_random.value(10000000,99999999)),'' from dual connect by level <= 1000;

select * from users;
--����
update users set password='cb54db33854702097a70d3d88184183f7cd630c7';