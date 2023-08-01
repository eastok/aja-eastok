-- �Է� insert
--insert into ���̺�[(Į��,Į��...)]
--values (��,[��,...]);
--���̺� ���� ������Ÿ�� ������ ���� // not null �ڸ��� �ʼ������̴�.
DESC departments;

--insert �� ���ؼ� ���� �Է��ߴ�.
insert into departments(department_id, department_name, manager_id, location_id)
values (300, 'GAME', 100, 1700);
--�� �̸� ������ �� 
insert into departments
values (290, '����', 100, 1700);
-- department_id�� 300�� ������ ���� ��� insert �ߴ� ������ ���´�.
SELECT *
FROM departments
WHERE department_id = 300;
SELECT *
FROM departments
WHERE department_id = 290;



--�ΰ��� �Էµɶ�(�Է��� ���� ������ ��)
insert into departments(department_id, department_name)
values (280, 'Music');
--
insert into departments(department_id, department_name, manager_id, location_id)
values (280, 'Music',null,null);
-- �ΰ��� ������ Ȯ��
SELECT *
FROM departments
WHERE department_id = 280;


--�������̺� �Է�
desc employees;
insert into employees
values(207,'����','��','kkt8274@gmail.com','010.7755.8274',sysdate,'IT_PROG','9999',null,'205','300');

--����1
desc departments;
insert into departments values(271, 'Sample Dept 1' , 200, 1700);
insert into departments values(272, 'Sample Dept 2' , 200, 1700);
insert into departments values(273, 'Sample Dept 3' , 200, 1700);

-- copy_departments ������̺��� ����
create table copy_departments(department_id number(4,0),
                              department_name varchar2(30),
                              manager_id number(6,0),
                              location_id number(4,0));
--



-- ���� update : !!����!! where ���� ������ ��� ���� ������Ʈ �ȴ� ���ȴٴ°�
--update ���̺�
--set�÷� = ��
--where ����

--Music�μ� �̸��ٲٱ�
update departments
set department_name = '����'
where department_id = 300;

update departments
set department_name = '����'
where department_id = 280;

update departments
set department_name = '����'
where department_id = 290;

--Music�μ��� �Ŵ����� �����̼� �����ϱ�
update departments
set manager_id = 100, location_id = 1700
where department_id=280;

--����  �μ���ȣ 150���� 200������ �Ŵ��� id �� 100���� �����ϱ�
update departments
set manager_id = 100
where department_id between 150 and 200;
--�� �Ǿ����� Ȯ��
select *
from departments
where department_id between 150 and 200;

--delete �����ϱ�
--delete from ���̺�
--where ����;

delete from departments
where department_name = '����' ;
--���� �����ϴ� �����͸� �����ϴ� ���̺�� �����Ͱ� ������� �����ϴ� �����͸����� �����ؾ� ��������
--����� << game �μ��� game �μ��� ������ �ȵ� �׷��� ����� ���� �������ϸ��
DELETE FROM employees where first_name = '����';

delete from departments
where department_name = 'GAME' ;

--������ where ���� �������� ? ��ü�� ����ǹǷ� ����
delete from copy_departments;
--where �������� �̷� �� ���簡 ��������.
update employees set phone_number = '010-1234-1234';

--���� ���·� ���� (Ŀ���� �������� ����)
rollback;
commit;
--�Է� ���� ���� �����ϱ�
--���̺����
drop table copy_departments;

desc employees;
insert into employees
values(208,'GOAT','THE','kkt8274@gmail.com','010.7755.8274',sysdate,'IT_PROG','99999',null,'205','300');