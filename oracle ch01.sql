/*回顾sql语言的DMl操作语言*/
/*1.DDL数据库定义语言:创建学生信息表*/
create table students(
xh number(4) primary key, -- 学号
name varchar2(20) not null, -- 姓名
age number(3), --年龄
sex varchar2(2), --性别
birthday date, --生日
address varchar2(50)
);

/*2.DML数据操作语言:增删改查*/
  -- 添加
 insert into students(xh,name,age,sex,birthday,address)
                 values(101,'马啡',21,'女','2-2月-2010','不详');  -- 日-月-年
 insert into students(xh,name,age,sex,birthday,address)
                 values(9999,'马啡',21,'女',to_date('2010-2-21','yyyy-mm-dd'),'不详');                
 insert into students(xh,name,age,sex,birthday,address)  -- 获得系统日期
                 values(8888,'小刘',21,'女',sysdate,'不详');      
  -- 修改
  update students set name='小马哥',address='真心不知道' where xh=101;

  -- 删除语句
  delete from students where xh=9999;
  
  -- 查询
  select * from students where  age <50 order by age desc;  -- 不支持limit关键字


/*Tcl事务控制语言*/
 注意:1.oracel所有的操作都是基事务执行。只有提交或回滚事务结束，另外一个事务开始.
      2.当在oralce中实现dml操作后，必需提交
insert into students(xh,name,age,sex,birthday,address)  -- 获得系统日期
                 values(102,'a',24,'男',sysdate,'不详');  
insert into students(xh,name,age,sex,birthday,address)  -- 获得系统日期
                 values(103,'b',24,'男',sysdate,'不详');  
insert into students(xh,name,age,sex,birthday,address)  -- 获得系统日期
                 values(104,'c',24,'男',sysdate,'不详');  
commit;  -- 提交              
insert into students(xh,name,age,sex,birthday,address)  -- 获得系统日期
                 values(105,'d',24,'男',sysdate,'不详'); 
delete from  students where xh=102;
savepoint myponit; -- 设置保存点
delete from  students where xh=103;   
rollback to  myponit; -- 回滚到保存点
delete from students;
rollback;
select * from students;           
                 
 
二、其它函数
to_date('日期字符串','日期格式')  将字符串转化为指定的日期格式
sysdate 获得系统日期
