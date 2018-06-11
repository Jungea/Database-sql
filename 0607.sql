/*
�ۼ���: ������
�ۼ���: 2018.06.11.(��������:2018.6.7.)
pg38~39
*/

--1. ������ table instance chart�� �����Ͽ� DEPT ���̺��� �����϶�. ü�̺��� �����Ǿ����� Ȯ���϶�.
CREATE TABLE DEPT(
ID NUMBER(7),
NAME VARCHAR2(25),
CONSTRAINT d_dept_id_pk PRIMARY KEY(ID));

SELECT *
FROM DEPT;

SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, SEARCH_CONDITION
FROM USER_CONSTRAINTS
WHERE TABLE_NAME = 'DEPT';

--2. ������ table instance chart�� �����Ͽ� EMP ���̺��� �����϶�. ���̺��� �����Ǿ����� Ȯ���϶�.
CREATE TABLE EMP(
ID NUMBER(7),
LAST_NAME VARCHAR2(25),
FIRST_NAME VARCHAR2(25),
DEPT_ID NUMBER(7), 
CONSTRAINT emp_deptid_fk FOREIGN KEY(DEPT_ID) REFERENCES DEPT(ID));

SELECT *
FROM EMP;

SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, SEARCH_CONDITION
FROM USER_CONSTRAINTS
WHERE TABLE_NAME = 'EMP';

--3. EMPLOYEE ���̺��� �� �÷����� Ÿ���� Ȯ���϶�. 
--Employee ���̺��� EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT_ID�� ������ EMPLOYEE2���̺��� �����϶�.
--��, �÷� �̸��� ID, FIRST_NAME, LAST_NAME, SALARY, DEPT_ID�� �Ѵ�.
CREATE TABLE EMPLOYEE2 (
ID NUMBER(6), FIRST_NAME VARCHAR2(20), LAST_NAME VARCHAR2(25),
SALARY NUMBER(8), DEPT_ID NUMBER(4) );

--4. Table-level PRIMARY KEY ���������� EMP table�� ID �÷��� �����϶�. ���� ������ �̸��� my_emp_id_pk�̴�.
ALTER TABLE EMP
ADD CONSTRAINT my_emp_id_pk PRIMARY KEY(ID);

--5. DEPT�� �̸��� �ߺ��� ���� ���� �ʵ��� �����϶�. ���������� �̸��� my_dept_name_uq�̴�.
ALTER TABLE DEPT
ADD CONSTRAINT my_dept_name_uq UNIQUE(NAME);

--6. �̸��� ���� ����� ä������ �ʱ�� �����ߴٰ� ��������. �̸� ����ޱ� ���� ���������� �����϶�. �̸��� emp_name_uq�̴�.
ALTER TABLE EMP
ADD CONSTRAINT emp_name_uq UNIQUE(FIRST_NAME, LAST_NAME);


--CONSTRAINT ����
--ALTER TABLE DEPT
--DROP CONSTRAINT �̸�;

--CONSTRAINT �߰�
--ALTER TABLE DEPT
--ADD CONSTRAINT �̸� ����(�÷�);