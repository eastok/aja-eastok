--������
drop sequence ������2;
create sequence ������1;
create sequence ������2
start with 1000
increment by 10;

select *
from user_sequences
where sequence_name = '������1';

--���̺��� �Է½� ������ �����
drop table �μ�;
create table �μ�(
��ȣ number primary key,
�̸� varchar2(100)
);

insert into �μ� values(������2.nextval,'������');
insert into �μ� values(������2.nextval,'���ߺ�');
insert into �μ� values(������2.nextval,'ȸ���');
insert into �μ� values(������2.nextval,'�濵��');
select * from �μ�;

--�������� ���簪 Ȯ�� CURRVAL
select ������1.currval from dual;
select ������2.nextval from dual;

--�������� ���� drop
drop sequence ������1;
drop sequence ������2;

update �μ�
set ��ȣ = ������1.nextval;
select * from �μ�;
