-- ������ ��ȸ�ϱ�
select * from departments;
select department_id, department_name from departments;
select department_id �μ���ȣ, department_name �μ��̸�
from departments;

-- ����
select last_name �̸�, job_id ����, salary ����
from employees;

select last_name �̸�, job_id ����, salary+100 ���ʽ�����
from employees;

select last_name �̸�, job_id ����, salary*0.9 �����ȿ���
from employees;

-- distinct �ߺ� �� ����
select distinct job_id ���� from employees;

-- ���� 1
select employee_id, first_name, last_name from employees;
-- ���� 2
select first_name, salary, salary*1.1 AS �������� from employees;
--���� 3
select employee_id �����ȣ, first_name �̸�, last_name �� from employees;

-- ���Ῥ���� || ���ڿ��� ����
select last_name || ' is a '|| job_id as "���� ����" from employees;

--���� 4
select first_name || ' ' ||  last_name fullname, email ||'@company.com' email
from employees;

-- where ������
select * from employees where salary > 14000;

-- �����ʹ� ��ҹ��ڸ� ����
select * from employees where last_name = 'king';
select * from employees where last_name = 'King';

-- where ����1 employee_id�� 100�� ���� ������ ����ϼ���
select * from employees  where employee_id = '100';

-- where ���� 2 first_name�� David�� ���� ������ ����ϼ���.
select * from employees where first_name = 'David';

-- where ���� 3 employee_id�� 105������ ���� ������ ����ϼ���.
select * from employees where employee_id < 105 ;

-- where ���� 4 start
select * from job_history where start_date > '06/03/03';

-- where ���� 5
select * from departments where location_id<>1700 ;

-- and or not ������
select last_name, department_id, salary
from employees
where department_id = 60 and salary > 4000
or department_id = 80 and salary > 10000;

--not 
select *
from employees
where not(hire_date>'2004/01/01' or salary > 5000);
--where (hire_date<='2004/01/01' and salary <= 5000);
-- not�� ���� �ε�ȣ�� �ݴ��, or�� and�� ����

--����
select *
from employees
where salary > 4000 and job_id = 'IT_PROG';

--����
select *
from employees
where salary > 4000 and (job_id = 'IT_PROG' or job_id = 'FI_ACCOUNT');

--in ������
select * from employees
where salary = 4000 or salary = 3000 or salary = 2700;

select * from employees
where salary in(4000,3000,2700);

--����
select * from employees
where salary in(10000,17000,24000);

--not in
select * from employees
where department_id not in(30,50,80,100,110);

--between
select * from employees
where salary between 10000 and 20000;

select * from employees
where  hire_date between '2004.01.01' and '2004.12.30';

select * from employees
where salary not between 7000 and 17000;

select * from employees
where last_name like '__s%';

--����
select * from employees
where job_id like '%AD%';

select * from employees
where job_id like '%AD___';

select * from employees
where phone_number like '%1234';

select * from employees
where phone_number not like '%3%' and phone_number like '%9';

select * from employees
where job_id like '%MGR%' or job_id like '%ASST%';

-- �ΰ��� �˻��Ҷ� is null
select * from employees
where commission_pct is not null;

select * from employees
where manager_id is null;

select * from employees
order by salary; --asc������,����Ʈ�������� desc ��������

select * from employees
order by salary desc;

select department_id, employee_id, first_name, last_name
from employees
order by department_id, employee_id; --ó���� �μ���ȣ���̰� ������ ������ȣ��

select department_id, last_name, salary*12 ����
from employees
order by ���� desc; --������ ū ������ ����

--����
select employee_id, first_name, last_name
from employees order by employee_id;

select * from employees
where job_id like '%CLERK%' order by salary;

select * from employees
where employee_id between 120 and 150 order by department_id desc, salary desc;

select employee_id ������ȣ, last_name �̸�, department_id �μ���ȣ, salary ����
from employees where employee_id between 120 and 150
order by department_id desc, salary desc;