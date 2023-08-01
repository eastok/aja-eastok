--그룹함수(집계함수)
select round(avg(salary)) 평균월급, max(salary),
    min(salary), sum(salary) 월급들의총합, count(salary) 총갯수
    from employees
where job_id = 'IT_PROG';

--\그룹절 group by
select department_id 부서명, count(department_id) 총갯수, round(avg(salary)) 평균급여
from employees
group by department_id
order by department_id;

select department_id 부서명, count(department_id) 사원수,max(salary) 최고급여,
    min(salary) 최소급여, sum(salary) 월급들의총합, round(avg(salary)) 평균월급
from employees
group by department_id
order by 월급들의총합 desc;

select department_id 부서번호, job_id 직종, sum(salary) 총합, count(job_id)
from employees
group by department_id, job_id
order by 1;

select
    round(avg(max(salary))) 부서별최고월급평균,
    round(avg(min(salary))) 부서별최저월급평균
from employees
group by department_id;

select department_id, count(department_id) 사원수
from employees
group by department_id;

SELECT department_id 부서, COUNT(*) 사원수
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 5; -- 그룹조건으로 행의수(사원수)가 5가 넘는 그룹

--예제 1
SELECT job_id 부서, sum(salary) 월급여합계
FROM employees WHERE job_id != 'AC_MGR'
GROUP BY job_id
HAVING round(avg(salary)) >= 10000
order by 월급여합계 desc;

--예제 2
SELECT department_id 부서번호, round(avg(salary)) 평균급여
FROM employees where department_id != '40'
GROUP BY department_id
HAVING round(avg(salary)) < 7000;

--예제 3
SELECT job_id "job_id", SUM(salary) 급여총액
FROM employees
where job_id not like '%REP%'
GROUP BY job_id
HAVING SUM(salary) >= 13000
ORDER BY 급여총액 desc;

