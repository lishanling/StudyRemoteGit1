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
decode(ceil(dbms_random.value(0, 2)), 1, '男', '女'),
decode(ceil(dbms_random.value(0, 6)), 1, '程序员', 2, '测试员', 3, '分析员', 4, '设计员', 5, '翻译员', '管理员'),
decode(ceil(dbms_random.value(0, 6)), 1, '湖南', 2, '湖北', 3, '广东', 4, '广西', 5, '北京', '上海'),
'180'||ceil(dbms_random.value(10000000,99999999)),'' from dual connect by level <= 1000;

select * from users;
--加密
update users set password='cb54db33854702097a70d3d88184183f7cd630c7';