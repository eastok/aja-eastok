SELECT * FROM ALL_OBJECTS WHERE OBJECT_TYPE = 'TABLE';

select *
from employees e join departments d
on e.department_id = d.department_id;

--2�� ����
select e.employee_id ������ȣ, e.last_name �̸�, e.department_id �μ���ȣ, d.department_name �μ���
from employees e join departments d
on e.department_id = d.department_id;

SELECT employee_id, job_id, job_title
FROM employees
NATURAL JOIN jobs;

--3�� ����
select e.last_name �̸�, d.department_name �μ���, l.city ���ø�
from employees e
join departments d
on e.department_id = d.department_id
join locations l
on d.location_id = l.location_id
where l.city = 'Oxford';

--���� natural����
select d.department_name �μ���, l.city ���ø�, c.country_name ������
from countries c
natural join departments d
natural join locations l
where c.country_name like 'United%' and (l.city = 'Seattle' or l.city = 'London' );
--���� on����
select d.department_name �μ���, l.city ���ø�, c.country_name ������
from countries c
join locations l on c.country_id = l.country_id
join departments d on d.location_id = l.location_id
where c.country_name like 'United%' and l.city in('Seattle','London');

--�񵿵�����
select e.manager_id, m.employee_id, e.last_name ����, m.last_name �Ŵ���
from employees e join employees m
on e.manager_id = m.employee_id;

select e.last_name ����, m.last_name �Ŵ���
from employees e join employees m
on e.manager_id = m.employee_id;


select employee_id, manager_id, last_name
from employees order by 1;

select *
from employees;

employees   countries

select employee_id
from employees
join countries
on ;

--�ܺ�����
--���ʿܺ�����

select last_name ����, e.department_id �μ���ȣ, d.department_name �μ���
from employees e left outer join departments d
on e.department_id = d.department_id;

select last_name ����, e.department_id �μ���ȣ, d.department_name �μ���
from employees e right outer join departments d
on e.department_id = d.department_id order by 2;

--Ǯ �ܺ�����
select last_name ����, e.department_id �μ���ȣ, d.department_name �μ���
from employees e full outer join departments d
on e.department_id = d.department_id
order by 2;

select c.country_name , c.country_id ������ȣ, l.location_id ������ȣ, l.city ����
from countries c left outer join locations l
on c.country_id = l.country_id
order by ������ȣ desc;

--ũ�ν�����
select c.country_name ����, r.region_name �����̸�
from countries c cross join regions r;

