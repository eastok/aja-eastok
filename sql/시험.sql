--1��
describe emp;

--2��
select * from emp where upper(ename) like upper('%smith%');

--3��
select * from emp
where ename like '____';

--4��
select count (distinct job) from emp;

--5��
select * from emp
where sal < (select sal from emp where ename = 'MARTIN');

--6��
select * from emp
where sal > (select max(sal) from emp where deptno='30');

--7��
select * from emp join salgrade on sal between losal and hisal
where grade = 3 and deptno = 30;

--8��
rollback;

--9��
SELECT empno �����ȣ, ename ����̸�, sal ����,
comm �߰�����, sal*12+NVL(comm, 0)"ANNSAL" FROM emp;

--10��
select e.ename, d.dname
from emp e join dept d
on e.deptno = d.deptno
where dname = 'SALES';

select * from emp Where job IN ('CLERK', 'SALESMAN');
select * from emp where;

Select count(*) from emp;