--문자형함수
select lower('ABCD'), upper('abcd'), initcap('eastok') from dual;

-concat
select concat('헬로우 ','월드!'), substr('헬로우월드',3) from dual;

select substr('헬로우월드',3) from dual;

select length('헬로우') from dual;

select instr('헬로우','로') from dual;

select trim('      공백    '),'      공백    ' from dual;


--문자형 함수 예제
select department_id, last_name
from employees where lower(last_name) = 'higgins';

select last_name, concat('직업명이 ',job_id) as 직업명
from employees
where substr(job_id,4,3) ='REP';
select job_id from employees;

--문자열 치환 함수 replace
select replace('헬로우월드','월드','세상') from DUAL;

--예제
select last_name 이름, lower(last_name), upper(last_name), email 이메일, initcap(email)
from employees;

select job_id 직업명, substr(job_id, 1,2) 앞의2개 from employees;

-- 숫자형 함수 round는 반올림, trunc는 버림
select round(15.193,2) 소수둘째, round(15.193) 정수
from dual;

select round(15.193,2) 소수둘째, round(15.193) 정수
from dual;

--mod는 나눈 나머지
-- 짝수번째 번호를 가진 직원들을 출력
select employee_id "?짝수 번호?", last_name ?이름?
from employees
where MOD(employee_id, 2) =0
order by 1;

--숫자형 함수 예제
select salary 급여, round (salary/30) 정수,
round(salary/30,1) "소수 첫째자리", round (salary/30,-1) "10의 자리"
from employees
order by 1;

--날짜형 함수
select round(sysdate, 'DD')일,
       round(sysdate, 'MM')달,
       round(sysdate, 'YYYY')년도,
       months_between('2017/10/10', '2017/07/10') 월차이,
       add_months('2017/07/10', 3) 애드먼쓰   
from dual;

--날짜연산
select sysdate-1 어제, sysdate 오늘, sysdate+1 내일
from dual;

select last_name, floor(sysdate - hire_date) 근무일수
from employees
where department_id = 90
order by 2;

select department_id
from employees;


-- 날짜함수 예제
select sysdate "오늘 날짜", hire_date "입사일",
    floor(months_between(sysdate,hire_date)) 근속개월,
    trunc(months_between(sysdate,hire_date), 1) 근속개월
from employees
where department_id = 100
order by 3;

select hire_date 입사일, add_months(hire_date, 3) "더하기 3개월",
add_months(hire_date, -3) "빼기 3개월"
from employees
-- where 100 <= employee_id and employee_id <= 106
where employee_id between 100 and 106
order by 1;

--변황형 함수
--to_char
select
TO_CHAR(12345678,'999,999,999') 콤마,
TO_CHAR(123.45678,'999,999,999.99') 소수점,
TO_CHAR(123.45678,'$999,999,999.99') 달러,
TO_CHAR(123.45678,'L999,999,999.99') 원화
from dual;

--날짜를 문자열로 변환
--년,월,일,시,분,초 예제
select to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss') 현재날짜시간
from dual;

select employee_id, to_char(hire_date, 'mm/yy')
from employees
where department_id = 100
order by 1;

select last_name 이름, to_char(salary, '$999,999.99') 월급
from employees
where salary > 10000
order by salary desc;

--문자를 숫자로 변환하는 간단한 예제
select to_number('012')+10
from dual;

--널값관련함수
--nvl함수는 null값 대신에 값을 바꾸어준다.
select last_name, NVL(manager_id, 0) 매니저
from employees where last_name = 'King';
--nvl2은 해당열의 널값이 아닐 경우와 널값인 경우 모두 값을 바꾸어준다.
select last_name, NVL2(manager_id, 1, 0) 매니저
from employees where last_name = 'King';

select last_name, manager_id
from employees where last_name = 'King';

-- null 예제
select last_name 이름, salary 월급,
case salary
when nvl2(commission_pct,1,0)=1 then (salary*12)+(salary*12)*commission_pct 연봉
when nvl2(commission_pct,1,0)=0 then salary*12 연봉
from employees;

select last_name 이름, salary 월급, nvl(commission_pct, 0) 커미션,
salary*12+nvl(commission_pct,0)*salary*12 연봉
from employees order by 연봉 desc;

select last_name 이름, salary 월급, nvl(commission_pct, 0) 커미션,
salary*12+nvl(commission_pct,0)*salary*12 연봉,
nvl2(commission_pct, 'sal+com', 'sal') 연봉계산방법
from employees order by 연봉 desc;

select nvl2(commission_pct, commission_pct, 0)*salary*12 보너스
from employees
order by 보너스 desc;

--decode 예제
select last_name, job_id, salary 월급,
decode ( trunc(salary/2000), 0, 0,
                            1,  09,
                            2,  20,
                            3,  30,
                            4,  40,
                            5,  42,
                            6,  44,
                                45) 세후
from employees;


--case 문은 비교 가능
select last_name 이름, job_id, salary,
    case    when salary<5000    then 'low'
            when salary<10000   then 'medium'
            when salary<20000   then 'good'
            else                     'excellent'
    end "급여 등급"
from employees;

select employee_id, first_name, last_name, salary,
    case    when salary>=9000   then '상위급여'
            when salary>=6000   then '중위급여'
            else                     '하위급여'
    end "급여등급"
from employees where job_id = 'IT_PROG';