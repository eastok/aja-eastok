--�� ������ �����Ϸ��� �Ϲ� �������� �۾�x, ������ �������� ����
create user john IDENTIFIED BY 1234; --��� 1234�� �� ���� ����
--���ӱ��� �� �����ѵ��� ��Ƽ� �Ѳ����� CONNECT, RESOURCE ���� �ο�
GRANT CONNECT, RESOURCE TO john;
--���� ����
REVOKE RESOURCE FROM john;
REVOKE CONNECT FROM john;
--���� ���� (������ ����� ��� ������ ����)
DROP USER john CASCADE;