--------------------------------------------------------
--  Insert for Table AREA
--------------------------------------------------------

INSERT INTO area
VALUES (1, '북미');

INSERT INTO area
VALUES (2, '남미');

INSERT INTO area
VALUES (3, '아프리카');

INSERT INTO area
VALUES (4, '중동');

INSERT INTO area
VALUES (5, '아시아');

INSERT INTO area
VALUES (6, '유럽');
--------------------------------------------------------
--  Insert for Table PRODUCT
--------------------------------------------------------

INSERT INTO product
VALUES (1, '킨볼', 220000);

INSERT INTO product
VALUES (2, '소프트하키 세트', 200000);

INSERT INTO product
VALUES (3, '농구공', 30000);

INSERT INTO product
VALUES (4, '소프트 발리볼', 18000);

INSERT INTO product
VALUES (5, '백네트', 33000);

INSERT INTO product
vALUES (6, '멀티네트', 88000);

INSERT INTO product
VALUES (7, '간이탁구네트세트', 15400);

INSERT INTO product
VALUES (8, '스타 칼라콘', 1800);

INSERT INTO product
VALUES (9, '알루미늄 배트', 13000);

INSERT INTO product
VALUES (10, '배팅장갑', 29700);

INSERT INTO product
VALUES (11, '족구공', 25000);

INSERT INTO product
VALUES (12, '소프트테니스 라켓', 13200);

INSERT INTO product
VALUES (13, '소프트테니스볼', 11000);

INSERT INTO product
VALUES(14, '스포츠피구공', 27500);

INSERT INTO product
VALUES(15, '폼 디스크', 9900);
--------------------------------------------------------
--  Insert for Table WAREHOUSE
--------------------------------------------------------

INSERT INTO warehouse
VALUES
(
    1,
    '북미 제 1창고',
    '229-5134-4153',
    '00513',
    '북미',
    '몬태나',
    '미줄라',
    '630 W. 5th st.',
    0,
    1
);

INSERT INTO warehouse
VALUES
(
    2,
    '미국 제 2창고',
    '229-5513-4153',
    '05134',
    '미국',
    '콜로라도',
    '리드빌',
    '5132 E. 220th st.',
    0,
    1
);

INSERT INTO warehouse
VALUES
(
    3,
    '캐나다 제 1창고',
    '513-5513-4153',
    'L4J 7B3',
    '캐나다',
    '온타리오',
    '해밀턴',
    '200 Chester Ave',
    0,
    1
);

INSERT INTO warehouse
VALUES
(
    4,
    '브라질 제 1창고',
    '413-5133-1553',
    '41205-005',
    '브라질',
    '바이아',
    '사우바도르',
    'Estr. das Barreiras, 100 - Arraial do Retiro',
    0,
    2
);

INSERT INTO warehouse
VALUES
(
    5,
    '알제리 제 1창고',
    '036-51-53-73',
    '03186',
    '알제리',
    '세티프',
    '세티프',
    'Boulevard Guessab Lahcen',
    0,
    3
);

INSERT INTO warehouse
VALUES
(
    6,
    '쿠웨이트 제 1창고',
    '036-51-53-73',
    '61586',
    '쿠웨이트',
    '하왈리',
    '하왈리',
    'Abdulla Al Salem St',
    0,
    4
);

INSERT INTO warehouse
VALUES
(
    7,
    '한국 제 1창고',
    '031-8351-0132',
    '15324',
    '대한민국',
    '경기도',
    '군포시',
    '고산로 151번길 26-24',
    0,
    5
);

INSERT INTO warehouse
VALUES
(
    8,
    '룩셈부르크 제 1창고',
    '152-41-63-52',
    '90543',
    '룩셈부르크',
    '빌츠',
    '빌츠',
    'Avenue JF Kennedy, Ettelbruck',
    0,
    6
);
--------------------------------------------------------
--  Insert for Table EMPLOYEE
--------------------------------------------------------

INSERT INTO employee
VALUES
(
    1,
    '조준우',
    '010-2315-9604',
    '영업부',
    null
);

INSERT INTO employee
VALUES
(
    2,
    '장상진',
    '010-6115-0204',
    '회계부',
    null
);

INSERT INTO employee
VALUES
(
    3,
    '이창빈',
    '010-0235-9104',
    '기획부',
    null
);

INSERT INTO employee
VALUES
(
    4,
    '허성욱',
    '010-0015-9523',
    '개발부',
    null
);

INSERT INTO employee
VALUES
(
    5,
    '이규리',
    '010-9128-4516',
    '영업부',
    null
);

INSERT INTO employee
VALUES
(
    6,
    '오양훈',
    '010-4982-0941',
    '물류관리부',
    1
);

INSERT INTO employee
VALUES
(
    7,
    '오왕택',
    '010-0512-7894',
    '물류관리부',
    1
);

INSERT INTO employee
VALUES
(
    8,
    '서수진',
    '010-7824-9810',
    '물류관리부',
    3
);

INSERT INTO employee
VALUES
(
    9,
    '천지헌',
    '010-5123-2136',
    '물류관리부',
    4
);

INSERT INTO employee
VALUES
(
    10,
    '윤성호',
    '010-5091-8423',
    '물류관리부',
    4
);

INSERT INTO employee
VALUES
(
    11,
    '윤사랑',
    '010-0941-6231',
    '물류관리부',
    5
);

INSERT INTO employee
VALUES
(
    12,
    '송상우',
    '010-8451-4131',
    '회계부',
    null
);

INSERT INTO employee
VALUES
(
    13,
    '김지연',
    '010-1321-5931',
    '개발부',
    null
);

INSERT INTO employee
VALUES
(
    14,
    '최진식',
    '010-2341-5183',
    '영업부',
    null
);

INSERT INTO employee
VALUES
(
    15,
    '신인섭',
    '010-5812-9513',
    '물류관리부',
    6
);

INSERT INTO employee
VALUES
(
    16,
    '하태욱',
    '010-8821-5421',
    '영업부',
    null
);

INSERT INTO employee
VALUES
(
    17,
    '김미리',
    '010-9321-1221',
    '영업부',
    null
);
--------------------------------------------------------
--  Insert for Table CLIENT
--------------------------------------------------------

INSERT INTO client
VALUES
(
    1,
    '아이스포츠',
    '010-5123-5413',
    3,
    null,
    '04132',
    '대한민국',
    '충청남도',
    '천안',
    '목천읍 교천리 2-3',
    5,
    5
);

INSERT INTO client
VALUES
(
    2,
    '에어밴드',
    '010-4123-6013',
    2,
    null,
    '45032',
    '미국',
    '펜실베니아',
    '필라델피아',
    '523 E. 52th st.',
    5,
    1
);

INSERT INTO client
VALUES
(
    3,
    '스포츠포스',
    '010-4233-5102',
    1,
    null,
    '44232',
    '미국',
    '조지아',
    '애틀랜타',
    '41 E. 302th st.',
    5,
    1
);

INSERT INTO client
VALUES
(
    4,
    '알파스포츠',
    '010-0513-1402',
    3,
    null,
    '00432-42',
    '브라질',
    '알라고아스',
    '애마세이오',
    'Rear. Barreiras, 140 - Arraial do Eorit',
    14,
    2
);

INSERT INTO client
VALUES
(
    5,
    '언더스포츠',
    '010-3933-6502',
    1,
    null,
    '23432',
    '독일',
    '브란덴부르크',
    '베를린',
    '140 - Reoalt eo Eorit',
    17,
    6
);

--------------------------------------------------------
--  Insert for Table PRODUCT_ORDER
--------------------------------------------------------

INSERT INTO product_order
VALUES
(
    1,
    to_date('2014-05-13', 'yyyy-mm-dd'),
    to_date('2014-05-20', 'yyyy-mm-dd'),
    1,
    1,
    3
);

INSERT INTO product_order
VALUES
(
    2,
    to_date('2015-03-14', 'yyyy-mm-dd'),
    to_date('2015-04-01', 'yyyy-mm-dd'),
    1,
    1,
    4
);

INSERT INTO product_order
VALUES
(
    3,
    to_date('2015-03-20', 'yyyy-mm-dd'),
    to_date('2015-03-25', 'yyyy-mm-dd'),
    1,
    1,
    4
);

INSERT INTO product_order
VALUES
(
    4,
    to_date('2012-04-25', 'yyyy-mm-dd'),
    to_date('2012-05-30', 'yyyy-mm-dd'),
    2,
    17,
    5
);

INSERT INTO product_order
VALUES
(
    5,
    to_date('2016-01-20', 'yyyy-mm-dd'),
    null,
    2,
    14,
    4
);

INSERT INTO product_order
VALUES
(
    6,
    to_date('2016-01-22', 'yyyy-mm-dd'),
    null,
    2,
    14,
    5
);
--------------------------------------------------------
--  Insert for Table ORDER_ITEM
--------------------------------------------------------

INSERT INTO order_item
VALUES
(
    1,
    1,
    15,
    15,
    2
);

INSERT INTO order_item
VALUES
(
    1,
    2,
    9,
    9,
    1
);

INSERT INTO order_item
VALUES
(
    2,
    1,
    14,
    14,
    10
);

INSERT INTO order_item
VALUES
(
    2,
    2,
    4,
    4,
    5
);

INSERT INTO order_item
VALUES
(
    2,
    3,
    31,
    31,
    8
);

INSERT INTO order_item
VALUES
(
    3,
    1,
    5,
    5,
    9
);

INSERT INTO order_item
VALUES
(
    4,
    1,
    2,
    2,
    4
);

INSERT INTO order_item
VALUES
(
    5,
    1,
    21,
    21,
    3
);

INSERT INTO order_item
VALUES
(
    5,
    2,
    3,
    3,
    9
);

INSERT INTO order_item
VALUES
(
    5,
    3,
    10,
    15,
    10
);

INSERT INTO order_item
VALUES
(
    6,
    1,
    0,
    10,
    12
);

INSERT INTO order_item
VALUES
(
    6,
    2,
    4,
    4,
    2
);

INSERT INTO order_item
VALUES
(
    6,
    3,
    5,
    10,
    7
);

COMMIT;