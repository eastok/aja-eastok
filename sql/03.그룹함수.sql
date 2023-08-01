--�׷��Լ�(�����Լ�)
select round(avg(salary)) ��տ���, max(salary),
    min(salary), sum(salary) ���޵�������, count(salary) �Ѱ���
    from employees
where job_id = 'IT_PROG';

--\�׷��� group by
select department_id �μ���, count(department_id) �Ѱ���, round(avg(salary)) ��ձ޿�
from employees
group by department_id
order by department_id;

select department_id �μ���, count(department_id) �����,max(salary) �ְ�޿�,
    min(salary) �ּұ޿�, sum(salary) ���޵�������, round(avg(salary)) ��տ���
from employees
group by department_id
order by ���޵������� desc;

select department_id �μ���ȣ, job_id ����, sum(salary) ����, count(job_id)
from employees
group by department_id, job_id
order by 1;

select
    round(avg(max(salary))) �μ����ְ�������,
    round(avg(min(salary))) �μ��������������
from employees
group by department_id;

select department_id, count(department_id) �����
from employees
group by department_id;

SELECT department_id �μ�, COUNT(*) �����
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 5; -- �׷��������� ���Ǽ�(�����)�� 5�� �Ѵ� �׷�

--���� 1
SELECT job_id �μ�, sum(salary) ���޿��հ�
FROM employees WHERE job_id != 'AC_MGR'
GROUP BY job_id
HAVING round(avg(salary)) >= 10000
order by ���޿��հ� desc;

--���� 2
SELECT department_id �μ���ȣ, round(avg(salary)) ��ձ޿�
FROM employees where department_id != '40'
GROUP BY department_id
HAVING round(avg(salary)) < 7000;

--���� 3
SELECT job_id "job_id", SUM(salary) �޿��Ѿ�
FROM employees
where job_id not like '%REP%'
GROUP BY job_id
HAVING SUM(salary) >= 13000
ORDER BY �޿��Ѿ� desc;

