-- 서브쿼리
-- 팝 직원의 고용일보다 이후에 고용된 직원들
-- 단일행 서브쿼리는 서브쿼리 결과가 한줄만 나와야된다.
select last_name 이름, hire_date 고용일자
from employees
where hire_date > ( select hire_date
                    from employees 
                    where last_name = 'Popp');
                    
select last_name 이름, job_id 직종, salary 급여
from employees
where salary = ( select min(salary) from employees);

--서브쿼리 예제1
select last_name 이름, salary 급여
from employees
where salary > ( select salary from employees
                where last_name = 'Abel');
--서브쿼리 예제2
select employee_id 직원번호, last_name 이름, department_id 부서번호, salary 급여
from employees
where salary > ( select salary from employees
                where last_name = 'Bull')
and department_id = ( select department_id from employees
                where last_name = 'Bull');
--서브쿼리 예제3
select last_name, salary, manager_id 
from employees
where manager_id = ( select employee_id from employees
                    where last_name = 'Russell');
--서브쿼리 예제4
select *
from employees
where job_id = ( select job_id from jobs 
                where job_title = 'Stock Manager');
                
--다중행 서브쿼리
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

--다중일 any연산자 : 서브쿼리 결과 중 하나라도 참이면 검색됨
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

--다중 예제1
select *
from employees
where manager_id in ( select manager_id
                from employees
                where department_id = '20')
and department_id != 20;

--다중 예제2
select *
from employees
where salary < any  ( select salary 
                    from employees
                    where job_id = 'ST_MAN');
                    
--다중 예제3
select employee_id, last_name, job_id, salary
from employees
where salary < all ( select salary 
                    from employees
                    where job_id = 'IT_PROG');

--집합연산자
--union
select employee_id, job_id
from employees
union
select employee_id, job_id
from job_history;

--집합연산자 예제1
select department_id
from employees
union
select department_id
from departments;
--집합연산자 예제2
select department_id
from employees
intersect
select department_id
from departments;
--집합연산자 예제3
select department_id
from departments
minus
select department_id
from employees;