-- ��������
-- �� ������ ����Ϻ��� ���Ŀ� ���� ������
-- ������ ���������� �������� ����� ���ٸ� ���;ߵȴ�.
select last_name �̸�, hire_date �������
from employees
where hire_date > ( select hire_date
                    from employees 
                    where last_name = 'Popp');
                    
select last_name �̸�, job_id ����, salary �޿�
from employees
where salary = ( select min(salary) from employees);

--�������� ����1
select last_name �̸�, salary �޿�
from employees
where salary > ( select salary from employees
                where last_name = 'Abel');
--�������� ����2
select employee_id ������ȣ, last_name �̸�, department_id �μ���ȣ, salary �޿�
from employees
where salary > ( select salary from employees
                where last_name = 'Bull')
and department_id = ( select department_id from employees
                where last_name = 'Bull');
--�������� ����3
select last_name, salary, manager_id 
from employees
where manager_id = ( select employee_id from employees
                    where last_name = 'Russell');
--�������� ����4
select *
from employees
where job_id = ( select job_id from jobs 
                where job_title = 'Stock Manager');
                
--������ ��������
select min(salary)
from employees
group by department_id;

--in
select employee_id, last_name
from employees
where salary in ( select min(salary)
                from employees
                group by department_id);
and job_id <> 'IT_PROG'
order by salary desc;

--������ any������ : �������� ��� �� �ϳ��� ���̸� �˻���
select employee_id, last_name
from employees
where salary > any ( select min(salary)
                from employees
                group by department_id);
and job_id <> 'IT_PROG'
order by salary desc;

-- all
select employee_id, last_name
from employees
where salary > all ( select min(salary)
                from employees
                group by department_id);
and job_id <> 'IT_PROG'
order by salary desc;

--���� ����1
select *
from employees
where manager_id in ( select manager_id
                from employees
                where department_id = '20')
and department_id != 20;

--���� ����2
select *
from employees
where salary < any  ( select salary 
                    from employees
                    where job_id = 'ST_MAN');
                    
--���� ����3
select employee_id, last_name, job_id, salary
from employees
where salary < all ( select salary 
                    from employees
                    where job_id = 'IT_PROG');

--���տ�����
--union
select employee_id, job_id
from employees
union
select employee_id, job_id
from job_history;

--���տ����� ����1
select department_id
from employees
union
select department_id
from departments;
--���տ����� ����2
select department_id
from employees
intersect
select department_id
from departments;
--���տ����� ����3
select department_id
from departments
minus
select department_id
from employees;