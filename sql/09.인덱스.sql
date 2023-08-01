SELECT
    TABLE_NAME      테이블명,
    INDEX_NAME      인덱스이름,
    COLUMN_NAME     컬럼이름    
FROM ALL_IND_COLUMNS
WHERE TABLE_NAME = 'EMPLOYEES';
--기본키, 유니크 열은 자동으로 인덱스가 생성됨 또한 기본키를 참조한느 외래키도 인덱스가 있음

--예제용 멤버 테이블 만들기
CREATE TABLE members(
    member_id NUMBER,
    first_name VARCHAR2(100) NOT NULL,
    last_name VARCHAR2(100) NOT NULL,
    gender CHAR(1) NOT NULL,
    dob DATE NOT NULL,
    email VARCHAR2(255) NOT NULL,
    PRIMARY KEY(member_id) --제약조건을 설정
);

select 
    table_name  테이블명,
    index_name  인덱스이름,
    column_name 컬럼이름
from all_ind_columns
where table_name = 'MEMBERS'; --테이블명은 대문자

EXPLAIN PLAN FOR
select * from members
where last_name = 'Harse';

select
    PLAN_TABLE_OUTPUT
from
    table(DBMS_XPLAN.DISPLAY());

CREATE INDEX MEMBERS_LAST_NAME_I
ON members(last_name);

select
    PLAN_TABLE_OUTPUT
from
    table(DBMS_XPLAN.DISPLAY());

--인덱스는 테이블 삭제시 자동삭제됨
drop index members_last_name_i;