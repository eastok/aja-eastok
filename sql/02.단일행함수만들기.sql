--�������Լ�
select lower('ABCD'), upper('abcd'), initcap('eastok') from dual;

-concat
select concat('��ο� ','����!'), substr('��ο����',3) from dual;

select substr('��ο����',3) from dual;

select length('��ο�') from dual;

select instr('��ο�','��') from dual;

select trim('      ����    '),'      ����    ' from dual;


--������ �Լ� ����
select department_id, last_name
from employees where lower(last_name) = 'higgins';

select last_name, concat('�������� ',job_id) as ������
from employees
where substr(job_id,4,3) ='REP';
select job_id from employees;

--���ڿ� ġȯ �Լ� replace
select replace('��ο����','����','����') from DUAL;

--����
select last_name �̸�, lower(last_name), upper(last_name), email �̸���, initcap(email)
from employees;

select job_id ������, substr(job_id, 1,2) ����2�� from employees;

-- ������ �Լ� round�� �ݿø�, trunc�� ����
select round(15.193,2) �Ҽ���°, round(15.193) ����
from dual;

select round(15.193,2) �Ҽ���°, round(15.193) ����
from dual;

--mod�� ���� ������
-- ¦����° ��ȣ�� ���� �������� ���
select employee_id "?¦�� ��ȣ?", last_name ?�̸�?
from employees
where MOD(employee_id, 2) =0
order by 1;

--������ �Լ� ����
select salary �޿�, round (salary/30) ����,
round(salary/30,1) "�Ҽ� ù°�ڸ�", round (salary/30,-1) "10�� �ڸ�"
from employees
order by 1;

--��¥�� �Լ�
select round(sysdate, 'DD')��,
       round(sysdate, 'MM')��,
       round(sysdate, 'YYYY')�⵵,
       months_between('2017/10/10', '2017/07/10') ������,
       add_months('2017/07/10', 3) �ֵ�վ�   
from dual;

--��¥����
select sysdate-1 ����, sysdate ����, sysdate+1 ����
from dual;

select last_name, floor(sysdate - hire_date) �ٹ��ϼ�
from employees
where department_id = 90
order by 2;

select department_id
from employees;


-- ��¥�Լ� ����
select sysdate "���� ��¥", hire_date "�Ի���",
    floor(months_between(sysdate,hire_date)) �ټӰ���,
    trunc(months_between(sysdate,hire_date), 1) �ټӰ���
from employees
where department_id = 100
order by 3;

select hire_date �Ի���, add_months(hire_date, 3) "���ϱ� 3����",
add_months(hire_date, -3) "���� 3����"
from employees
-- where 100 <= employee_id and employee_id <= 106
where employee_id between 100 and 106
order by 1;

--��Ȳ�� �Լ�
--to_char
select
TO_CHAR(12345678,'999,999,999') �޸�,
TO_CHAR(123.45678,'999,999,999.99') �Ҽ���,
TO_CHAR(123.45678,'$999,999,999.99') �޷�,
TO_CHAR(123.45678,'L999,999,999.99') ��ȭ
from dual;

--��¥�� ���ڿ��� ��ȯ
--��,��,��,��,��,�� ����
select to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss') ���糯¥�ð�
from dual;

select employee_id, to_char(hire_date, 'mm/yy')
from employees
where department_id = 100
order by 1;

select last_name �̸�, to_char(salary, '$999,999.99') ����
from employees
where salary > 10000
order by salary desc;

--���ڸ� ���ڷ� ��ȯ�ϴ� ������ ����
select to_number('012')+10
from dual;

--�ΰ������Լ�
--nvl�Լ��� null�� ��ſ� ���� �ٲپ��ش�.
select last_name, NVL(manager_id, 0) �Ŵ���
from employees where last_name = 'King';
--nvl2�� �ش翭�� �ΰ��� �ƴ� ���� �ΰ��� ��� ��� ���� �ٲپ��ش�.
select last_name, NVL2(manager_id, 1, 0) �Ŵ���
from employees where last_name = 'King';

select last_name, manager_id
from employees where last_name = 'King';

-- null ����
select last_name �̸�, salary ����,
case salary
when nvl2(commission_pct,1,0)=1 then (salary*12)+(salary*12)*commission_pct ����
when nvl2(commission_pct,1,0)=0 then salary*12 ����
from employees;

select last_name �̸�, salary ����, nvl(commission_pct, 0) Ŀ�̼�,
salary*12+nvl(commission_pct,0)*salary*12 ����
from employees order by ���� desc;

select last_name �̸�, salary ����, nvl(commission_pct, 0) Ŀ�̼�,
salary*12+nvl(commission_pct,0)*salary*12 ����,
nvl2(commission_pct, 'sal+com', 'sal') ���������
from employees order by ���� desc;

select nvl2(commission_pct, commission_pct, 0)*salary*12 ���ʽ�
from employees
order by ���ʽ� desc;

--decode ����
select last_name, job_id, salary ����,
decode ( trunc(salary/2000), 0, 0,
                            1,  09,
                            2,  20,
                            3,  30,
                            4,  40,
                            5,  42,
                            6,  44,
                                45) ����
from employees;


--case ���� �� ����
select last_name �̸�, job_id, salary,
    case    when salary<5000    then 'low'
            when salary<10000   then 'medium'
            when salary<20000   then 'good'
            else                     'excellent'
    end "�޿� ���"
from employees;

select employee_id, first_name, last_name, salary,
    case    when salary>=9000   then '�����޿�'
            when salary>=6000   then '�����޿�'
            else                     '�����޿�'
    end "�޿����"
from employees where job_id = 'IT_PROG';