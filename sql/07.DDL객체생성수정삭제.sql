--���̺����
drop table comp;
--���̺� �����
CREATE TABLE comp (
������ CHAR(10),
������ VARCHAR2 (10)
);

DESC COMP;
INSERT INTO comp values('1', '�ϳ�');
INSERT INTO comp values('2', '��');
INSERT INTO comp values('3', '��');

select * from comp;

--���ڿ� ��¥���̺�
drop table ex_date;
create table ex_date (
    id number(2),
    start_date date default sysdate
);

desc ex_date;
insert into ex_date(id) values(10);
insert into ex_date(id) values(11);
insert into ex_date(id) values(12);
select *from ex_Date;
commit;

drop table comp;
drop table ex_date;

create table sample_product(
product_id char(10),
product_name varchar2(20),
menu_date date default sysdate);

desc sample_product;

drop table sample_product;






--���̺� ��������
create table emp1(
id number(3) primary key,---�����̸Ӹ� Ű : �⺻ Ű
name varchar2(20) not null,
sal number check(sal>1000)
);
drop table emp1;
desc emp1;

insert into emp1 values( 1, '����',1001 );
insert into emp1 values( 2, '����', 1811818188); --- �⺻Ű�� �ߺ��ȵ�, �ΰ� �Է¾ȵ�

--����
create table members(
member_id number(2) primary key,
first_name varchar2(50) not null,
last_name varchar2(50) not null,
gender varchar2(5) check (gender in('Man' ,'Woman')),
birth_day date default sysdate,
email varchar2(200) not null unique);

desc members;

insert into members values(1,'����','��','Woman','2020-09-09','eastok11@gmail.com');

update members
set email = 'eastok11@gmail.com'
where member_id = 1;

desc �μ�;
INSERT INTO �μ� values(1,'�濵');
INSERT INTO �μ� values(2,'����');
--�μ��� ������ ���� �ϰ� �־ ������ �ȵȴ�.
delete from �μ� where ��ȣ = 1;    

desc ����;
INSERT INTO ���� values(1,'�����',1);
INSERT INTO ���� values(2,'������',2);


-- CREATE TABLE AS  ���̺��� ������.
CREATE TABLE emp_temp
AS                    
SELECT * FROM emp where 1!=1;-- ���ǿ� �����ϴ� �����Ͱ� ���� . -> ���� ������ ��

select * from emp_temp;

drop table emp_temp;

--CREATE TABLE AS
CREATE TABLE emp_temp
AS
select * from emp;

select * from emp_temp;