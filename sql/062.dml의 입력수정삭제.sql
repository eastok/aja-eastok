-- 입력 insert
--insert into 테이블[(칼럼,칼럼...)]
--values (값,[값,...]);
--테이블 열의 데이터타입 간단히 보기 // not null 자리는 필수정보이다.
DESC departments;

--insert 를 통해서 행을 입력했다.
insert into departments(department_id, department_name, manager_id, location_id)
values (300, 'GAME', 100, 1700);
--열 이름 생략할 때 
insert into departments
values (290, '낚시', 100, 1700);
-- department_id가 300인 정보를 보니 방금 insert 했던 정보가 나온다.
SELECT *
FROM departments
WHERE department_id = 300;
SELECT *
FROM departments
WHERE department_id = 290;



--널값이 입력될때(입력을 하지 않으면 널)
insert into departments(department_id, department_name)
values (280, 'Music');
--
insert into departments(department_id, department_name, manager_id, location_id)
values (280, 'Music',null,null);
-- 널값이 들어갔는지 확인
SELECT *
FROM departments
WHERE department_id = 280;


--직원테이블 입력
desc employees;
insert into employees
values(207,'경태','김','kkt8274@gmail.com','010.7755.8274',sysdate,'IT_PROG','9999',null,'205','300');

--예제1
desc departments;
insert into departments values(271, 'Sample Dept 1' , 200, 1700);
insert into departments values(272, 'Sample Dept 2' , 200, 1700);
insert into departments values(273, 'Sample Dept 3' , 200, 1700);

-- copy_departments 라는테이블을 만듬
create table copy_departments(department_id number(4,0),
                              department_name varchar2(30),
                              manager_id number(6,0),
                              location_id number(4,0));
--



-- 수정 update : !!주의!! where 절이 없으면 모든 행이 업데이트 된다 ㅈ된다는것
--update 테이블
--set컬럼 = 값
--where 조건

--Music부서 이름바꾸기
update departments
set department_name = '게임'
where department_id = 300;

update departments
set department_name = '음악'
where department_id = 280;

update departments
set department_name = '낚시'
where department_id = 290;

--Music부서의 매니저와 로케이션 수정하기
update departments
set manager_id = 100, location_id = 1700
where department_id=280;

--예제  부서번호 150에서 200번까지 매니저 id 를 100으로 수정하기
update departments
set manager_id = 100
where department_id between 150 and 200;
--잘 되었는지 확인
select *
from departments
where department_id between 150 and 200;

--delete 삭제하기
--delete from 테이블
--where 조건;

delete from departments
where department_name = '음악' ;
--만약 삭제하는 데이터를 참조하는 테이블과 데이터가 있을경우 참조하는 데이터를먼저 삭제해야 삭제가능
--김경태 << game 부서라서 game 부서가 삭제가 안됨 그래서 김경태 부터 삭제를하면됨
DELETE FROM employees where first_name = '경태';

delete from departments
where department_name = 'GAME' ;

--삭제시 where 절을 안적으면 ? 전체가 적용되므로 주의
delete from copy_departments;
--where 안적으면 이런 대 참사가 벌어진다.
update employees set phone_number = '010-1234-1234';

--그전 상태로 복구 (커밋한 시점으로 복구)
rollback;
commit;
--입력 수정 삭제 연습하기
--테이블삭제
drop table copy_departments;

desc employees;
insert into employees
values(208,'GOAT','THE','kkt8274@gmail.com','010.7755.8274',sysdate,'IT_PROG','99999',null,'205','300');