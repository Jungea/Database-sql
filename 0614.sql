/*
작성자: 정은애
작성일: 2018.06.14.
pg60~61
*/

SELECT DEPARTMENT_ID, AVG(SALARY)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING COUNT(*) > 5;

--1.  소숫점 이하를 버리기 위해서는 Truc 함수 사용
SELECT MAX(SALARY) "Maximum", MIN(SALARY) "Minimum", SUM(SALARY) "Sum", trunc(avg(salary)) "Average"
FROM EMPLOYEES;


--2.round 함수를 이용하면, 해당 소숫점 아래 숫자까지 반올림하여 출력한다.
SELECT job_id, MAX(SALARY) "Maximum", MIN(SALARY) "Minimum", SUM(SALARY) "Sum", round(avg(salary),2) "Average"
FROM EMPLOYEES
GROUP BY JOB_ID;

