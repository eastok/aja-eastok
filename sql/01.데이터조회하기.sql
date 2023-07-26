-- 데이터 조회하기
select * from departments;
select department_id, department_name from departments;
select department_id 부서번호, department_name 부서이름
from departments;

-- 연산
select last_name 이름, job_id 직종, salary 월급
from employees;

select last_name 이름, job_id 직종, salary+100 보너스월급
from employees;

select last_name 이름, job_id 직종, salary*0.9 감봉된월급
from employees;

-- distinct 중복 값 제거
select distinct job_id 직종 from employees;

-- 예제 1
select employee_id, first_name, last_name from employees;
-- 예제 2
select first_name, salary, salary*1.1 AS 뉴셀러리 from employees;
--예제 3
select employee_id 사원번호, first_name 이름, last_name 성 from employees;

-- 연결연산자 || 문자열을 연결
select last_name || ' is a '|| job_id as "직업 정보" from employees;

--예제 4
select first_name || ' ' ||  last_name fullname, email ||'@company.com' email
from employees;

-- where 조건절
select * from employees where salary > 14000;

-- 데이터는 대소문자를 구분
select * from employees where last_name = 'king';
select * from employees where last_name = 'King';

-- where 예제1 employee_id가 100인 직원 정보를 출력하세요
select * from employees  where employee_id = '100';

-- where 예제 2 first_name이 David인 직원 정보를 출력하세요.
select * from employees where first_name = 'David';

-- where 예제 3 employee_id가 105이하인 직원 정보를 출력하세요.
select * from employees where employee_id < 105 ;

-- where 예제 4 start
select * from job_history where start_date > '06/03/03';

-- where 예제 5
select * from departments where location_id<>1700 ;

-- and or not 연산자
select last_name, department_id, salary
from employees
where department_id = 60 and salary > 4000
or department_id = 80 and salary > 10000;

--not 
select *
from employees
where not(hire_date>'2004/01/01' or salary > 5000);
--where (hire_date<='2004/01/01' and salary <= 5000);
-- not을 빼면 부등호는 반대로, or는 and로 변경

--예제
select *
from employees
where salary > 4000 and job_id = 'IT_PROG';

--예제
select *
from employees
where salary > 4000 and (job_id = 'IT_PROG' or job_id = 'FI_ACCOUNT');

--in 연산자
select * from employees
where salary = 4000 or salary = 3000 or salary = 2700;

select * from employees
where salary in(4000,3000,2700);

--예제
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

--예제
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

-- 널값을 검색할때 is null
select * from employees
where commission_pct is not null;

select * from employees
where manager_id is null;

select * from employees
order by salary; --asc순차적,디폴트생략가능 desc 내림차순

select * from employees
order by salary desc;

select department_id, employee_id, first_name, last_name
from employees
order by department_id, employee_id; --처음에 부서번호순이고 같으면 직원번호순

select department_id, last_name, salary*12 연봉
from employees
order by 연봉 desc; --연봉이 큰 순으로 정렬

--예제
select employee_id, first_name, last_name
from employees order by employee_id;

select * from employees
where job_id like '%CLERK%' order by salary;

select * from employees
where employee_id between 120 and 150 order by department_id desc, salary desc;

select employee_id 직원번호, last_name 이름, department_id 부서번호, salary 월급
from employees where employee_id between 120 and 150
order by department_id desc, salary desc;