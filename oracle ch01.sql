/*�ع�sql���Ե�DMl��������*/
/*1.DDL���ݿⶨ������:����ѧ����Ϣ��*/
create table students(
xh number(4) primary key, -- ѧ��
name varchar2(20) not null, -- ����
age number(3), --����
sex varchar2(2), --�Ա�
birthday date, --����
address varchar2(50)
);

/*2.DML���ݲ�������:��ɾ�Ĳ�*/
  -- ���
 insert into students(xh,name,age,sex,birthday,address)
                 values(101,'���',21,'Ů','2-2��-2010','����');  -- ��-��-��
 insert into students(xh,name,age,sex,birthday,address)
                 values(9999,'���',21,'Ů',to_date('2010-2-21','yyyy-mm-dd'),'����');                
 insert into students(xh,name,age,sex,birthday,address)  -- ���ϵͳ����
                 values(8888,'С��',21,'Ů',sysdate,'����');      
  -- �޸�
  update students set name='С���',address='���Ĳ�֪��' where xh=101;

  -- ɾ�����
  delete from students where xh=9999;
  
  -- ��ѯ
  select * from students where  age <50 order by age desc;  -- ��֧��limit�ؼ���


/*Tcl�����������*/
 ע��:1.oracel���еĲ������ǻ�����ִ�С�ֻ���ύ��ع��������������һ������ʼ.
      2.����oralce��ʵ��dml�����󣬱����ύ
insert into students(xh,name,age,sex,birthday,address)  -- ���ϵͳ����
                 values(102,'a',24,'��',sysdate,'����');  
insert into students(xh,name,age,sex,birthday,address)  -- ���ϵͳ����
                 values(103,'b',24,'��',sysdate,'����');  
insert into students(xh,name,age,sex,birthday,address)  -- ���ϵͳ����
                 values(104,'c',24,'��',sysdate,'����');  
commit;  -- �ύ              
insert into students(xh,name,age,sex,birthday,address)  -- ���ϵͳ����
                 values(105,'d',24,'��',sysdate,'����'); 
delete from  students where xh=102;
savepoint myponit; -- ���ñ����
delete from  students where xh=103;   
rollback to  myponit; -- �ع��������
delete from students;
rollback;
select * from students;           
                 
 
������������
to_date('�����ַ���','���ڸ�ʽ')  ���ַ���ת��Ϊָ�������ڸ�ʽ
sysdate ���ϵͳ����
