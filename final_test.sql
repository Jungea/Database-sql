--10.
CREATE TABLE make_order (
order_number NUMBER(7),
book_id NUMBER(7),
CONSTRAINT make_order_pk PRIMARY KEY(order_number, book_id),
CONSTRAINT make_order_fk FOREIGN KEY(order_number, book_id)
REFERENCES member(member_id)
ON DELETE CASCADE);

--11.
ALTER TABLE order_sheet
ADD CONSTRAINT order_sheet_address_fk FOREIGN KEY(address_id)
REFERENCES adress(address_id)
ON DELETE SET NULL;

--12. credit_card 테이블의 member_id를 외래키로 설정하기 위해서
--member 테이블의 member_id가 필요하기 때문에 member 테이블을 먼저 생성해야한다.

/*order_sheet 테이블 생성*/
CREATE TABLE order_sheet (
order_number NUMBER(7) PRIMARY KEY,
order_date DATE,
address_id NUMBER(7),
credit_number NUMBER(16),
CONSTRAINT order_sheet_address_id FOREIGN KEY (address_id)
REFERENCES ADDRESS(ADDRESS_ID),
CONSTRAINT ORDER_SHEET_CREDIT_NUMBER FOREIGN KEY (CREDIT_NUMBER)
REFERENCES CREDIT_CARD(CARD_NUMBER));

--13.
INSERT INTO ORDER_SHEET
VALUES(120, SYS_DATE, 45, NULL);

--14.
CREATE INDEX book_name_idx
ON BOOK(NAME);

--15.
DELETE CREDIT_CARD
WHERE EXPIRATION < TO_DATE(SYSDATE,'yy/MM/DD');

--16.
SELECT NAME, STOCK, PRICE
FROM BOOK
WHERE (PRICE BETWEEN 5000 AND 10000) OR (STOCK IS NULL) OR STOCK = 0
ORDER BY PRICE;

--17.
select order_number, COUNT(BOOK_ID)
FROM BOOK_ORDER
GROUP BY ORDER_NUMBER
ORDER BY COUNT(BOOK_ID);

--18.
SELECT MEMBER_ID "member_id", MEMBER_NAME "name", COUNT(OERDER_NUMBER) "countorder"
FROM MEMBER NATURAL JOIN MAKE_ORDER
GROUP BY MEMBER_ID, MEMBER_NAME
HAVING countorder > 2;

--19.
SELECT MEMBER_ID, NAME, DETAIL, CARD_NUMBER
FROM MEMBER NATURAL JOIN ADDRESS
NATURAL JOIN CREDIT_CARD
WHERE NAME LIKE '이%';

--20.
SELECT book_id, book_name, SUM(quantity*price)
FROM BOOK b LEFT OUTER JOIN BOOK_ORDER o
ON b.book_id = o.book_id
GROUP BY book_id, book_name;