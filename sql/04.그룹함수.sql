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