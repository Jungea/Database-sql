/*
�ۼ���: ������
�ۼ���: 2018.05.29.
pg15~16
*/

--1. 12000 �̻� ���� ����� ���� �޿��� ����϶�.
SELECT LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY >= 12000;

--2. �����ȣ 176���� ����� ���� �̸�, �μ���ȣ�� ����϶�.
SELECT LAST_NAME, FIRST_NAME, DEPARTMENT_ID
FROM EMPLOYEES
WHERE EMPLOYEE_ID = 176;

--3. �޿��� 5000 ���� �ް� �ִ� ����� ���� �޿��� ����϶�.
SELECT LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY <= 5000;

--4. �޿��� 12000 �̻� �ް� �ִ� ����� ���� �̸�, �޿�, �μ���ȣ�� ����϶�
SELECT LAST_NAME, FIRST_NAME, SALARY, DEPARTMENT_ID
FROM EMPLOYEES
WHERE SALARY >= 12000;

--5. �޿��� 5000 �̻�, 12000 ���Ϸ� �ް� �ִ� ����� �����ȣ, ��, �޿��� ����϶�
--�޿��� ���� ������� ��µǾ�� �Ѵ�.
SELECT EMPLOYEE_ID, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY BETWEEN 5000 AND 12000
ORDER BY SALARY DESC;

--6. ���� Matos�̰ų� Taylor�� ����� ���� ���۳���, Job code�� ����϶�.
--������� ���� ����� ���� ��µǾ�� �Ѵ�.
SELECT LAST_NAME, HIRE_DATE, JOB_ID
FROM EMPLOYEES
WHERE LAST_NAME = 'Matos' or LAST_NAME = 'Taylor'
ORDER BY HIRE_DATE;

--7. �μ���ȣ 20�� 50������ ����� ��, �μ���ȣ�� ����϶�.
--���� ���ĺ� �������� ��µǾ�� �Ѵ�.
SELECT LAST_NAME, DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID BETWEEN 20 AND 50
ORDER BY LAST_NAME DESC;

--8. 50�� �μ����� ���ϴ� ������� �ٹ��ϴ� Job id�� �ߺ� �����Ͽ� ����϶�.
SELECT DISTINCT JOB_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 50;

--9. 2003�� �Ǵ� 2005�⿡ ���� ����� ���� ������� ����϶�.
SELECT LAST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE LIKE '03%' OR HIRE_DATE LIKE '05%';

--10. ������(MANAGER)�� ���� ����� ���� JOB CODE�� ����϶�
SELECT LAST_NAME, JOB_ID
FROM EMPLOYEES
WHERE MANAGER_ID IS NULL;

--11. Commission�� �ް� �ִ� ����� �����ȣ, �޿�, COMMISSION�� ����϶�.
--Salary�� �����ϵ�, ���� salary��� commission�� Ŀ���� ������ ���;� �Ѵ�.
SELECT EMPLOYEE_ID, SALARY, COMMISSION_PCT
FROM EMPLOYEES
WHERE COMMISSION_PCT > 0
ORDER BY SALARY, COMMISSION_PCT;
--WHERE commission_pct IS NOT NULL

--12. �޿��� 3000���� �����鼭 �μ���ȣ�� 100���� ���� �μ��� �ٹ��ϴ� ����� ��, �μ���ȣ, �޿�, job code�� ����϶�.
SELECT LAST_NAME, DEPARTMENT_ID, SALARY, JOB_ID
FROM EMPLOYEES
WHERE SALARY < 3000 AND DEPARTMENT_ID < 100;