/*
작성자: 정은애
작성일: 2018.05.29.
pg15~16
*/

--1. 12000 이상 버는 사원의 성과 급여를 출력하라.
SELECT LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY >= 12000;

--2. 사원번호 176번인 사원의 성과 이름, 부서번호를 출력하라.
SELECT LAST_NAME, FIRST_NAME, DEPARTMENT_ID
FROM EMPLOYEES
WHERE EMPLOYEE_ID = 176;

--3. 급여를 5000 이하 받고 있는 사원의 성과 급여를 출력하라.
SELECT LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY <= 5000;

--4. 급여를 12000 이상 받고 있는 사원의 성과 이름, 급여, 부서번호를 출력하라
SELECT LAST_NAME, FIRST_NAME, SALARY, DEPARTMENT_ID
FROM EMPLOYEES
WHERE SALARY >= 12000;

--5. 급여를 5000 이상, 12000 이하로 받고 있는 사원의 사원번호, 성, 급여를 출력하라
--급여가 많은 사람부터 출력되어야 한다.
SELECT EMPLOYEE_ID, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY BETWEEN 5000 AND 12000
ORDER BY SALARY DESC;

--6. 성이 Matos이거나 Taylor인 사원의 성과 시작날자, Job code를 출력하라.
--고용일이 빠른 사람이 먼저 출력되어야 한다.
SELECT LAST_NAME, HIRE_DATE, JOB_ID
FROM EMPLOYEES
WHERE LAST_NAME = 'Matos' or LAST_NAME = 'Taylor'
ORDER BY HIRE_DATE;

--7. 부서번호 20과 50사이인 사원의 성, 부서번호를 출력하라.
--성이 알파벳 역순으로 출력되어야 한다.
SELECT LAST_NAME, DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID BETWEEN 20 AND 50
ORDER BY LAST_NAME DESC;

--8. 50번 부서에서 일하는 사원들이 근무하는 Job id를 중복 제거하여 출려하라.
SELECT DISTINCT JOB_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 50;

--9. 2003년 또는 2005년에 고용된 사원의 성과 고용일을 출력하라.
SELECT LAST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE LIKE '03%' OR HIRE_DATE LIKE '05%';

--10. 관리자(MANAGER)가 없는 사원의 성과 JOB CODE를 출력하라
SELECT LAST_NAME, JOB_ID
FROM EMPLOYEES
WHERE MANAGER_ID IS NULL;

--11. Commission을 받고 있는 사원의 사원번호, 급여, COMMISSION을 출력하라.
--Salary로 정렬하되, 같은 salary라면 commission이 커지는 순서로 나와야 한다.
SELECT EMPLOYEE_ID, SALARY, COMMISSION_PCT
FROM EMPLOYEES
WHERE COMMISSION_PCT > 0
ORDER BY SALARY, COMMISSION_PCT;
--WHERE commission_pct IS NOT NULL

--12. 급여가 3000보다 작으면서 부서번호가 100보다 작은 부서에 근무하는 사원의 성, 부서번호, 급여, job code를 출려하라.
SELECT LAST_NAME, DEPARTMENT_ID, SALARY, JOB_ID
FROM EMPLOYEES
WHERE SALARY < 3000 AND DEPARTMENT_ID < 100;