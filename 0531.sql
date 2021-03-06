/*
작성자: 정은애
작성일: 2018.05.31.
pg20
*/

SELECT LAST_NAME, 
TO_CHAR(HIRE_DATE, 'fm Month YYYY') AS HIREDATE
FROM EMPLOYEES;

SELECT TO_CHAR(SALARY, '$99,999.00') SALARY
FROM EMPLOYEES
WHERE LAST_NAME='Ernst';

select last_name, hire_date
from employees
where hire_date=to_date('6/17/2003', 'mm/dd/yyyy');

--1. 오늘 날짜와 시각을 다음 형식으로 출력하라. : 1999/12/29 15:03:45 AM (AM 대신 오전이라는 단어가 출력될 수 있다.)
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS AM') AS CURRENT_DATE
FROM DUAL;

--2. 급여는 $심볼과 함께 6문자 크기로 출력되게 하면서, 사원의 성과 급여를 출력하라.
SELECT LAST_NAME, TO_CHAR(SALARY, '$999,999')
FROM EMPLOYEES;

--3. 1999.03.01이전에 고용된 사원의 성, 고용일을 출려가라. (이전 <=)
--이 질의는 NLS_LANG 변수가 어떤 변수로 설정되어도 작동할 수 있도록 하라. (CHARSET 한/영)
SELECT LAST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE <= TO_DATE('2003.03.01', 'YYYY/MM/DD');

--4. 급여가 20000이상인 사원을 급여가 큰 순서로 성과 급여 고용일을 출력하라.
--고용일은 1999-04-28 형식이어야 한다.
SELECT SALARY, LAST_NAME, TO_CHAR(HIRE_DATE, 'YYYY-MM-DD')
FROM EMPLOYEES
WHERE SALARY >= 20000
ORDER BY SALARY DESC;

--5. 성이 n으로 끝나는 사원의 사원번호와 성을 출력하라.
SELECT EMPLOYEE_ID, LAST_NAME
FROM EMPLOYEES
WHERE LAST_NAME LIKE '%n';
