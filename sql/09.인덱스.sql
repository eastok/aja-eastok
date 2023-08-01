SELECT
    TABLE_NAME      ���̺��,
    INDEX_NAME      �ε����̸�,
    COLUMN_NAME     �÷��̸�    
FROM ALL_IND_COLUMNS
WHERE TABLE_NAME = 'EMPLOYEES';
--�⺻Ű, ����ũ ���� �ڵ����� �ε����� ������ ���� �⺻Ű�� �����Ѵ� �ܷ�Ű�� �ε����� ����

--������ ��� ���̺� �����
CREATE TABLE members(
    member_id NUMBER,
    first_name VARCHAR2(100) NOT NULL,
    last_name VARCHAR2(100) NOT NULL,
    gender CHAR(1) NOT NULL,
    dob DATE NOT NULL,
    email VARCHAR2(255) NOT NULL,
    PRIMARY KEY(member_id) --���������� ����
);

select 
    table_name  ���̺��,
    index_name  �ε����̸�,
    column_name �÷��̸�
from all_ind_columns
where table_name = 'MEMBERS'; --���̺���� �빮��

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

--�ε����� ���̺� ������ �ڵ�������
drop index members_last_name_i;