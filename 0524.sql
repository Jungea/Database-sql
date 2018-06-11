/*
작성자: 정은애
작성일: 2018.05.24.
pg9~10
*/

--1. DEPARTMENT 테이블의 구조를 확인하라.
DESC DEPARTMENTS;

--2. DEPARTMENT 테이블의 모든 내용을 출력하라.
SELECT *
FROM DEPARTMENTS;

--3. EMPLOYEE의 LAST NAME, JOB CODE, HIRE DATE, EMPLOYEE NUMBER를 출력하라.
--사원번호가 가장 앞에 나와야 한다. / HIRE DATE는 STARTDATE로 출력하라.
SELECT  employee_id, last_name, job_id, hire_date, HIRE_DATE AS STARTDATE
FROM EMPLOYEES;

--4. 사원들에게 배정된 JOB CODE를 출력하라. 중복된 값은 한번만 출력한다.
SELECT DISTINCT job_ID
FROM EMPLOYEES;

--5. 가능한 모든 JOB CODE를 출력하라. 사원들에게 배정되지 않은 JOB CODE도 출력되어야 한다.
SELECT JOB_ID
FROM JOBS;

--6. 사원의 이름, 주소, 급여를 출력하라. 각 컬럼의 이름은 Employee, Address, Salary이다.
--Employee은 성과 이름이 같이 붙어서 하나의 컬럼으로 출력된다.
SELECT FIRST_NAME ||' '|| LAST_NAME AS "Employee",  SALARY AS "Salary"
FROM EMPLOYEES;

--7. 부서의 이름과 부서번호를 출력하라.
SELECT DEPARTMENT_NAME, DEPARTMENT_ID
FROM DEPARTMENTS;

--8. COUNTRIES 테이블에 존재하는 모든 데이터를 출력하라.
SELECT *
FROM COUNTRIES;