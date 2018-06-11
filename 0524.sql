/*
�ۼ���: ������
�ۼ���: 2018.05.24.
pg9~10
*/

--1. DEPARTMENT ���̺��� ������ Ȯ���϶�.
DESC DEPARTMENTS;

--2. DEPARTMENT ���̺��� ��� ������ ����϶�.
SELECT *
FROM DEPARTMENTS;

--3. EMPLOYEE�� LAST NAME, JOB CODE, HIRE DATE, EMPLOYEE NUMBER�� ����϶�.
--�����ȣ�� ���� �տ� ���;� �Ѵ�. / HIRE DATE�� STARTDATE�� ����϶�.
SELECT  employee_id, last_name, job_id, hire_date, HIRE_DATE AS STARTDATE
FROM EMPLOYEES;

--4. ����鿡�� ������ JOB CODE�� ����϶�. �ߺ��� ���� �ѹ��� ����Ѵ�.
SELECT DISTINCT job_ID
FROM EMPLOYEES;

--5. ������ ��� JOB CODE�� ����϶�. ����鿡�� �������� ���� JOB CODE�� ��µǾ�� �Ѵ�.
SELECT JOB_ID
FROM JOBS;

--6. ����� �̸�, �ּ�, �޿��� ����϶�. �� �÷��� �̸��� Employee, Address, Salary�̴�.
--Employee�� ���� �̸��� ���� �پ �ϳ��� �÷����� ��µȴ�.
SELECT FIRST_NAME ||' '|| LAST_NAME AS "Employee",  SALARY AS "Salary"
FROM EMPLOYEES;

--7. �μ��� �̸��� �μ���ȣ�� ����϶�.
SELECT DEPARTMENT_NAME, DEPARTMENT_ID
FROM DEPARTMENTS;

--8. COUNTRIES ���̺� �����ϴ� ��� �����͸� ����϶�.
SELECT *
FROM COUNTRIES;