/*
�ۼ���: ������
�ۼ���: 2018.06.12. (1)
pg 41~42
*/

--1. EMP ���̺��� �ܷ�Ű�� DEPT_ID�� �ε����� ��ġ�϶�.
CREATE INDEX emp_dept_id_idx
ON EMP(DEPT_ID);

--2. �μ��� �̸����� �˻��Ǵ� ��찡 ����. �˻��� ȿ���� ���� �� �ִ� ��ɹ��� DEPT ���̺� �����϶�.
CREATE INDEX dept_name_idx
ON DEPT(NAME);

--3. 1���� ������ �ε����� �����϶�.
DROP INDEX emp_dept_id_idx;

--4. EMP ���̺��� �����϶�.
DROP TABLE EMP;