--1번
describe emp;

--2번
select * from emp where upper(ename) like upper('%smith%');

--3번
select * from emp
where ename like '____';

--4번
select count (distinct job) from emp;

--5번
select * from emp
where sal < (select sal from emp where ename = 'MARTIN');

--6번
select * from emp
where sal > (select max(sal) from emp where deptno='30');

--7번
select * from emp join salgrade on sal between losal and hisal
where grade = 3 and deptno = 30;

--8번
rollback;

--9번
SELECT empno 사원번호, ename 사원이름, sal 월급,
comm 추가수당, sal*12+NVL(comm, 0)"ANNSAL" FROM emp;

--10번
select e.ename, d.dname
from emp e join dept d
on e.deptno = d.deptno
where dname = 'SALES';

select * from emp Where job IN ('CLERK', 'SALESMAN');
select * from emp where;

Select count(*) from emp;