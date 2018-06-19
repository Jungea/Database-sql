/*
�ۼ���: ������
�ۼ���: 2018.06.14.
pg60~61
*/

SELECT DEPARTMENT_ID, AVG(SALARY)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING COUNT(*) > 5;

--1.  �Ҽ��� ���ϸ� ������ ���ؼ��� Truc �Լ� ���
SELECT MAX(SALARY) "Maximum", MIN(SALARY) "Minimum", SUM(SALARY) "Sum", trunc(avg(salary)) "Average"
FROM EMPLOYEES;


--2.round �Լ��� �̿��ϸ�, �ش� �Ҽ��� �Ʒ� ���ڱ��� �ݿø��Ͽ� ����Ѵ�.
SELECT job_id, MAX(SALARY) "Maximum", MIN(SALARY) "Minimum", SUM(SALARY) "Sum", round(avg(salary),2) "Average"
FROM EMPLOYEES
GROUP BY JOB_ID;

