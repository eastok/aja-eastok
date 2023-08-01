SELECT * FROM ALL_OBJECTS WHERE OBJECT_TYPE = 'TABLE';

select *
from employees e join departments d
on e.department_id = d.department_id;

--2개 조인
select e.employee_id 직원번호, e.last_name 이름, e.department_id 부서번호, d.department_name 부서명
from employees e join departments d
on e.department_id = d.department_id;

SELECT employee_id, job_id, job_title
FROM employees
NATURAL JOIN jobs;

--3개 조인
select e.last_name 이름, d.department_name 부서명, l.city 도시명
from employees e
join departments d
on e.department_id = d.department_id
join locations l
on d.location_id = l.location_id
where l.city = 'Oxford';

--예제 natural조인
select d.department_name 부서명, l.city 도시명, c.country_name 국가명
from countries c
natural join departments d
natural join locations l
where c.country_name like 'United%' and (l.city = 'Seattle' or l.city = 'London' );
--예제 on조인
select d.department_name 부서명, l.city 도시명, c.country_name 국가명
from countries c
join locations l on c.country_id = l.country_id
join departments d on d.location_id = l.location_id
where c.country_name like 'United%' and l.city in('Seattle','London');

--비동등조인
select e.manager_id, m.employee_id, e.last_name 직원, m.last_name 매니저
from employees e join employees m
on e.manager_id = m.employee_id;

select e.last_name 직원, m.last_name 매니저
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

--외부조인
--왼쪽외부조인

select last_name 직원, e.department_id 부서번호, d.department_name 부서명
from employees e left outer join departments d
on e.department_id = d.department_id;

select last_name 직원, e.department_id 부서번호, d.department_name 부서명
from employees e right outer join departments d
on e.department_id = d.department_id order by 2;

--풀 외부조인
select last_name 직원, e.department_id 부서번호, d.department_name 부서명
from employees e full outer join departments d
on e.department_id = d.department_id
order by 2;

select c.country_name , c.country_id 국가번호, l.location_id 지역번호, l.city 도시
from countries c left outer join locations l
on c.country_id = l.country_id
order by 지역번호 desc;

--크로스조인
select c.country_name 국가, r.region_name 지역이름
from countries c cross join regions r;

