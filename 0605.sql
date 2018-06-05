/*
�ۼ���: ������
�ۼ���: 2018.06.05.
pg
*/

--lab_08_01.sql
CREATE TABLE my_employee
  (id  NUMBER(4) CONSTRAINT my_employee_id_nn NOT NULL,
   last_name VARCHAR2(25),
   first_name VARCHAR2(25),
   userid  VARCHAR2(8),
   salary  NUMBER(9,2));

--1. ù��° ���� �Է��ϴ� ������ �����϶�. Ŀ���̸��� ������� ����.
INSERT INTO MY_EMPLOYEE
VALUES (1 ,'Patel', 'Ralph', 'rpatel', 895);

--2. �ι�° ���� �Է��ϴ� ������ �����϶�. �÷��̸��� ����Ѵ�.
INSERT INTO MY_EMPLOYEE(ID, LAST_NAME, FIRST_NAME, USERID, SALARY)
VALUES (2 ,'Dancs', 'Betty', 'bdancs', 860);

--3. ����°, �׹�° ����� �Է��ϴ� ������ �����϶�.
INSERT INTO MY_EMPLOYEE
VALUES (3 ,'Biri', 'Ben', 'bbiri', 1100);

INSERT INTO MY_EMPLOYEE
VALUES (4 ,'Newman', 'Chad', 'cnewman', 750);

--4. ���̺� �����Ͱ� �ԷµǾ����� Ȯ���� �� �ִ� ������ �ۼ��Ͽ� �����϶�.
SELECT *
FROM MY_EMPLOYEE;

--5. �����ͺ��̽��� ���������� �ݿ��ǵ��� �����ϴ� ������ �����϶�.
COMMIT;

--6. 3��° ����� ���� Drexler�� �����϶�.
UPDATE MY_EMPLOYEE
SET LAST_NAME = 'Drexler'
WHERE ID=3;

--7. 1000���� ���� ���� ����� �޿��� 1000���� �����϶�.
UPDATE MY_EMPLOYEE
SET SALARY = 1000
WHERE SALARY < 1000;

--8. �����Ͱ� ����� �����Ǿ����� Ȯ���϶�.
SELECT *
FROM MY_EMPLOYEE;

--9. Betty Dancs�� �����϶�. ������ ������ Ȯ���϶�. �����ͺ��̽��� ���������� �ݿ��ǵ��� �����ϴ� ������ �����϶�.
DELETE FROM MY_EMPLOYEE
WHERE FIRST_NAME = 'Betty' AND LAST_NAME = 'Dancs';

SELECT *
FROM MY_EMPLOYEE;

COMMIT;

--10. 5��° ���� �����϶�. ������ ������ Ȯ���϶�. ������ ������ Ȯ���϶�.
INSERT INTO MY_EMPLOYEE
VALUES (5 ,'Ropeburn', 'Audrey', 'aropebur', 1550);

SELECT *
FROM MY_EMPLOYEE;

--11. Ʈ������� �ӽ� �������� ǥ���϶�.
SAVEPOINT A;

--12. ���̺��� ��� �����͸� ������. ���̺��� ������� Ȯ���϶�.
DELETE FROM MY_EMPLOYEE;

SELECT *
FROM MY_EMPLOYEE;

--13. insert���� ������ ��ġ�� �����鼭, delete���� ����϶�. �����͵��� �״�� ���� �ִ� ���̺��� ������ Ȯ���϶�.
ROLLBACK TO SAVEPOINT A;

--14. �����Ͱ� ���������� �ݿ��ǵ��� �϶�. ���̺��� ������ Ȯ���϶�.
COMMIT;

SELECT *
FROM MY_EMPLOYEE;