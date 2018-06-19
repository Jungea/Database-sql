/*
작성자: 정은애
작성일: 2018.06.12. (1)
pg 41~42
*/

--1. EMP 테이블의 외래키인 DEPT_ID에 인덱스를 설치하라.
CREATE INDEX emp_dept_id_idx
ON EMP(DEPT_ID);

--2. 부서는 이름으로 검색되는 경우가 많다. 검색의 효율을 높일 수 있는 명령문을 DEPT 테이블에 설정하라.
CREATE INDEX dept_name_idx
ON DEPT(NAME);

--3. 1에서 설정한 인덱스를 삭제하라.
DROP INDEX emp_dept_id_idx;

--4. EMP 테이블을 삭제하라.
DROP TABLE EMP;