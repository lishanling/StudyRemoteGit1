create table student(
 id integer primary key,
 name varchar2(20),
 username varchar2(40),
 password varchar2(40)
) ;
alter table student add tid integer;
update student set tid=202 where id=101
select * from student;
create table teacher(
   id integer primary key,
   name varchar2(20)
);
insert into teacher values(202,'sys');

select * from STUDENT where tid=201;
select * from TEACHER t join student s on t.id=201 and t.id=s.tid;

delete from teacher where id in(202);
--查询  登录
select * from STUDENT
--更新
update student set username='没主' , password='b' where id=103

select * from student
insert into student values(104,'陈水边','台湾','c',203)
select * from student where name like '陈%'
select * from teacher where name like '钱%'
insert into teacher values(4,'钱随你')

--缓存的作用域

--缓存的作用域 SqlSession
--分页 : pageSize 每页的条数     currPage 当前页 
--分页获取的数据     总条数  total   总页数    totalPage  分页数据rows

select count(1) total,ceil(count(1)/5) from teacher;
--嵌套结果查询
select (select count(1) from TEACHER) total,(select ceil(count(1)/5) from TEACHER) totalPage
,ts.* from (select t.*,rownum r from teacher t where rownum<=10) ts
where r>5

--方法二
select count(1) total, ceil(count(1)/5) totalPage from teacher;
select * from 
(select t.*,rownum r from teacher t where rownum<=10) 
where r>5

--存储过程
create or replace procedure pro_pagination(
 p_currPage  number,p_pageSize number,p_total out number,
 p_totalPage out number,p_rows out sys_refcursor)
 as
 begin 
   select count(1) , ceil(count(1)/p_pageSize)into p_total, p_totalPage from teacher;
   open p_rows for select id,name from
		(select t.*,rownum r from teacher t
		where p_pageSize*p_currPage>=rownum)
		where
		r>p_pageSize*(p_currPage-1);
   end;
--在 commoned window 执行语句
--启动服务   set serveroutput on
--测试存储过程
declare
	v_total NUMBER;
	v_totalPage NUMBER;
	v_rows sys_refcursor;
	v_id NUMBER;
	v_name varchar2(20);
begin
	pro_pagination(&currPage,&pageSize,v_total,v_totalPage,v_rows);
	dbms_output.put_line('总条数：'||v_total||'总页数：'||v_totalPage);
	loop
	fetch v_rows into v_id,v_name;
	dbms_output.put_line('v_id：'||v_id||'v_name：'||v_name);
	exit when v_rows%notfound;
	end loop;
	end;

