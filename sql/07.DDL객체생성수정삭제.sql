--테이블삭제
drop table comp;
--테이블 만들기
CREATE TABLE comp (
고정열 CHAR(10),
가변열 VARCHAR2 (10)
);

DESC COMP;
INSERT INTO comp values('1', '하나');
INSERT INTO comp values('2', '둘');
INSERT INTO comp values('3', '셋');

select * from comp;

--숫자와 날짜테이블
drop table ex_date;
create table ex_date (
    id number(2),
    start_date date default sysdate
);

desc ex_date;
insert into ex_date(id) values(10);
insert into ex_date(id) values(11);
insert into ex_date(id) values(12);
select *from ex_Date;
commit;

drop table comp;
drop table ex_date;

create table sample_product(
product_id char(10),
product_name varchar2(20),
menu_date date default sysdate);

desc sample_product;

drop table sample_product;






--테이블 제약조건
create table emp1(
id number(3) primary key,---프라이머리 키 : 기본 키
name varchar2(20) not null,
sal number check(sal>1000)
);
drop table emp1;
desc emp1;

insert into emp1 values( 1, '옥돔',1001 );
insert into emp1 values( 2, '남종', 1811818188); --- 기본키는 중복안됨, 널값 입력안됨

--예제
create table members(
member_id number(2) primary key,
first_name varchar2(50) not null,
last_name varchar2(50) not null,
gender varchar2(5) check (gender in('Man' ,'Woman')),
birth_day date default sysdate,
email varchar2(200) not null unique);

desc members;

insert into members values(1,'동옥','서','Woman','2020-09-09','eastok11@gmail.com');

update members
set email = 'eastok11@gmail.com'
where member_id = 1;

desc 부서;
INSERT INTO 부서 values(1,'경영');
INSERT INTO 부서 values(2,'개발');
--부서를 직원이 참조 하고 있어서 삭제가 안된다.
delete from 부서 where 번호 = 1;    

desc 직원;
INSERT INTO 직원 values(1,'김경태',1);
INSERT INTO 직원 values(2,'서동옥',2);


-- CREATE TABLE AS  테이블을 복사함.
CREATE TABLE emp_temp
AS                    
SELECT * FROM emp where 1!=1;-- 조건에 만족하는 데이터가 없음 . -> 열만 복제가 됨

select * from emp_temp;

drop table emp_temp;

--CREATE TABLE AS
CREATE TABLE emp_temp
AS
select * from emp;

select * from emp_temp;