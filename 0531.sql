SELECT LAST_NAME, 
TO_CHAR(HIRE_DATE, 'fm Month YYYY') AS HIREDATE
FROM EMPLOYEES;

SELECT TO_CHAR(SALARY, '$99,999.00') SALARY
FROM EMPLOYEES
WHERE LAST_NAME='Ernst';

select last_name, hire_date
from employees
where hire_date=to_date('6/17/2003', 'mm/dd/yyyy');

//1.
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS AM') AS CURRENT_DATE
FROM DUAL;

//2.
SELECT LAST_NAME, TO_CHAR(SALARY, '$999,999')
FROM EMPLOYEES;

//3. 1999.03.01������ ���� ����� ��, ������� �������. (���� <=)
//�� ���Ǵ� NLS_LANG ������ � ������ �����Ǿ �۵��� �� �ֵ��� �϶�. (CHARSET ��/��)
SELECT LAST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE <= TO_DATE('2003.03.01', 'YYYY/MM/DD');

//4. �޿��� 20000�̻��� ����� �޿��� ū ������ ���� �޿� ������� ����϶�.
//������� 1999-04-28 �����̾�� �Ѵ�.
SELECT SALARY, LAST_NAME, TO_CHAR(HIRE_DATE, 'YYYY-MM-DD')
FROM EMPLOYEES
WHERE SALARY >= 20000
ORDER BY SALARY DESC;

//5. ���� n���� ������ ����� �����ȣ�� ���� ����϶�.
SELECT EMPLOYEE_ID, LAST_NAME
FROM EMPLOYEES
WHERE LAST_NAME LIKE '%n'

