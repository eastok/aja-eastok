--연습문제
select * from emp;

--1
select empno, ename, sal
from emp
where deptno = 10;
--2
select ename, hiredate, deptno
from emp
where empno = 7369;
--3
select *
from emp
where ename = 'ALLEN';
--4
select ename, deptno, sal
from emp
where hiredate = '81/02/20';
--5
select *
from emp
where job not in 'MANAGER';
--6
select *
from emp
where hiredate > '81/04/02';
--7
select ename, sal, deptno
from emp
where sal >= 800;
--8
select *
from emp
where deptno >= 20;
--9
select *
from emp
where substr(ename,1,1) > 'K';
--10
select *
from emp
where hiredate < '81/12/09';
--11
select empno, ename
from emp
where empno >= 7698;
--12
select ename, sal, deptno
from emp
where hiredate >= '81/04/02' and hiredate <= '82/12/09';
--13
select ename, job, sal
from emp
where 3000 > sal and sal >1600 ;
--14
select *
from emp
where not empno >= 7654 or not empno <= 7782 ;
--15
select *
from emp
where substr(ename,1,1)>='B' and substr(ename,1,1)<='J' ;
--16
select *
from emp
where hiredate not like '81%';
--17
select *
from emp
where job in ('MANAGER','SALESMAN') ;
--18
select ename, empno, deptno
from emp
where deptno not in('20','30');
--19
select empno, ename, hiredate, deptno
from emp
where ename like 'S%' ;
select empno, ename, hiredate, deptno
from emp
where substr(ename,1,1)='S' ;
--20
select *
from emp
where hiredate like '81%';
--21
select *
from emp
where ename like '%S%';
--22
select *
from emp
where ename like 'M____N';
--23
select *
from emp
where ename like '_A%';
--24
select *
from emp
where comm is null;
--25
select *
from emp
where comm is not null;
--26
select *
from emp
where deptno = '30' and sal >= 1500;
--27
select empno, ename, deptno
from emp
where ename like 'K%' or deptno = '30';
--28
select *
from emp
where sal >= 1500 and deptno ='30' and job = 'MANAGER';
--29
select *
from emp
where deptno = '30' order by empno;
--30
select *
from emp
order by sal desc;
--31
select *
from emp
order by deptno, sal desc;
--32
select deptno, ename, sal
from emp
order by deptno desc, ename, sal desc;
--33
select ename, sal, round(sal*0.13) bonus, deptno
from emp
where deptno = '10';
--34
select ename, sal,NVL(COMM,0),sal+NVL(comm,0) 총액
from emp
order by 총액 desc;
--35
select ename, sal, to_char(round(sal*0.15,1),'$99999.9') 회비
from emp
where sal >= 1500 and sal <= 3000;
--36
select d.dname,count(e.empno)
from emp e join dept d
on e.deptno = d.deptno
group by d.dname
having count(e.empno)>5 ;
--37
select job, sum(sal)
from emp
where job not in 'SALESMAN'
group by job
having sum(sal) > 5000;
--38
select e.empno, e.ename, e.sal, s.grade
from emp e
join salgrade s
on sal between losal and hisal;
--39
select deptno, count(empno), count(comm)
from emp
group by deptno;
--40
--case 사용
select ename, deptno,
    case    when deptno = '10' then '총무부'
            when deptno = '20' then '개발부'
            when deptno = '30' then '영업부'
            else           '기타'
    end "부서명"
from emp;

--decode 사용
select ename, deptno,
    decode(deptno,  '10', '총무부',
                    '20', '개발부',
                    '30', '영업부',
                          '기타') "부서명"
from emp;
