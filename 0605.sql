/*
작성자: 정은애
작성일: 2018.06.05.
pg
*/

--lab_08_01.sql
CREATE TABLE my_employee
  (id  NUMBER(4) CONSTRAINT my_employee_id_nn NOT NULL,
   last_name VARCHAR2(25),
   first_name VARCHAR2(25),
   userid  VARCHAR2(8),
   salary  NUMBER(9,2));

--1. 첫번째 행을 입력하는 문장을 수행하라. 커럼이름을 사용하지 말라.
INSERT INTO MY_EMPLOYEE
VALUES (1 ,'Patel', 'Ralph', 'rpatel', 895);

--2. 두번째 행을 입력하는 문장을 수행하라. 컬럼이름을 사용한다.
INSERT INTO MY_EMPLOYEE(ID, LAST_NAME, FIRST_NAME, USERID, SALARY)
VALUES (2 ,'Dancs', 'Betty', 'bdancs', 860);

--3. 세번째, 네번째 행들을 입력하는 문장을 수행하라.
INSERT INTO MY_EMPLOYEE
VALUES (3 ,'Biri', 'Ben', 'bbiri', 1100);

INSERT INTO MY_EMPLOYEE
VALUES (4 ,'Newman', 'Chad', 'cnewman', 750);

--4. 테이블에 데이터가 입력되었는지 확인할 수 있는 문장을 작성하여 수행하라.
SELECT *
FROM MY_EMPLOYEE;

--5. 데이터베이스에 영구적으로 반영되도록 보장하는 문장을 수행하라.
COMMIT;

--6. 3번째 사원의 성을 Drexler로 수정하라.
UPDATE MY_EMPLOYEE
SET LAST_NAME = 'Drexler'
WHERE ID=3;

--7. 1000보다 적게 버는 사원의 급여를 1000으로 수정하라.
UPDATE MY_EMPLOYEE
SET SALARY = 1000
WHERE SALARY < 1000;

--8. 데이터가 제대로 수정되었는지 확인하라.
SELECT *
FROM MY_EMPLOYEE;

--9. Betty Dancs를 삭제하라. 수정된 내용을 확인하라. 데이터베이스에 영구적으로 반영되도록 보장하는 문장을 수행하라.
DELETE FROM MY_EMPLOYEE
WHERE FIRST_NAME = 'Betty' AND LAST_NAME = 'Dancs';

SELECT *
FROM MY_EMPLOYEE;

COMMIT;

--10. 5번째 행을 삽입하라. 수정된 내용을 확인하라. 수정된 내용을 확인하라.
INSERT INTO MY_EMPLOYEE
VALUES (5 ,'Ropeburn', 'Audrey', 'aropebur', 1550);

SELECT *
FROM MY_EMPLOYEE;

--11. 트랜잭션의 임시 저장점을 표기하라.
SAVEPOINT A;

--12. 테이블의 모든 데이터를 지워라. 테이블이 비었음을 확인하라.
DELETE FROM MY_EMPLOYEE;

SELECT *
FROM MY_EMPLOYEE;

--13. insert문에 영향을 미치지 않으면서, delete문을 취소하라. 데이터들이 그대로 남아 있는 테이블의 내용을 확인하라.
ROLLBACK TO SAVEPOINT A;

--14. 데이터가 영구적으로 반영되도록 하라. 테이블의 내용을 확인하라.
COMMIT;

SELECT *
FROM MY_EMPLOYEE;