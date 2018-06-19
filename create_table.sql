--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

CREATE TABLE "PRODUCT" 
(	"PRODUCT_ID" NUMBER CONSTRAINT product_pk PRIMARY KEY, 
	"PRODUCT_NAME" VARCHAR2(50 BYTE) NOT NULL, 
	"PRICE" NUMBER NOT NULL,
    CONSTRAINT product_price_check CHECK (price >0)
);
--------------------------------------------------------
--  DDL for Table AREA
--------------------------------------------------------

CREATE TABLE "AREA" 
(	"AREA_ID" NUMBER CONSTRAINT area_pk PRIMARY KEY, 
	"AREA_NAME" VARCHAR2(20 BYTE) NOT NULL
);
--------------------------------------------------------
--  DDL for Table WAREHOUSE
--------------------------------------------------------

CREATE TABLE "WAREHOUSE" 
(	"WAREHOUSE_ID" NUMBER CONSTRAINT warehouse_pk PRIMARY KEY, 
	"WAREHOUSE_NAME" VARCHAR2(50 BYTE) NOT NULL, 
	"PHONE_NUMBER" VARCHAR2(20 BYTE) NOT NULL, 
	"POST_NUMBER" VARCHAR2(20 BYTE) NOT NULL, 
	"COUNTRY" VARCHAR2(50 BYTE) NOT NULL, 
	"STATE" VARCHAR2(50 BYTE) NOT NULL, 
	"CITY" VARCHAR2(50 BYTE) NOT NULL,
	"DETAILED_ADDRESS" VARCHAR2(50 BYTE), 
	"IS_CLOSURE" CHAR(1 BYTE) DEFAULT 1 NOT NULL, 
	"AREA_ID" NUMBER NOT NULL,
    CONSTRAINT warehouse_area_fk FOREIGN KEY (area_id)
    REFERENCES area(area_id),
    CONSTRAINT warehouse_is_closure_chk CHECK(is_closure IN (0, 1))
);

COMMENT ON COLUMN "WAREHOUSE"."IS_CLOSURE" IS '1: true, 0: false';
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

CREATE TABLE "EMPLOYEE" 
(	"EMPLOYEE_ID" NUMBER CONSTRAINT employee_pk PRIMARY KEY, 
	"EMPLOYEE_NAME" VARCHAR2(50 BYTE) NOT NULL, 
	"PHONE_NUMBER" VARCHAR2(20 BYTE) NOT NULL, 
	"DEPARTMENT_NAME" VARCHAR2(50 BYTE) NOT NULL, 
	"WAREHOUSE_ID" NUMBER,
    CONSTRAINT employee_warehouse_fk FOREIGN KEY (warehouse_id)
    REFERENCES warehouse (warehouse_id)
);
--------------------------------------------------------
--  DDL for Table CLIENT
--------------------------------------------------------

CREATE TABLE "CLIENT" 
(	"CLIENT_ID" NUMBER CONSTRAINT client_pk PRIMARY KEY, 
	"CLIENT_NAME" VARCHAR2(50 BYTE) NOT NULL, 
	"PHOEN_NUMBER" VARCHAR2(20 BYTE) CONSTRAINT client_phone_number_uq UNIQUE NOT NULL,
	"CREDIT_RATING" CHAR(1 BYTE) NOT NULL, 
	"OTHER_DETAIL" VARCHAR2(100 BYTE), 
	"POST_NUMBER" VARCHAR2(20 BYTE) NOT NULL, 
	"COUNTRY" VARCHAR2(50 BYTE) NOT NULL, 
	"STATE" VARCHAR2(50 BYTE) NOT NULL, 
	"CITY" VARCHAR2(50 BYTE) NOT NULL, 
	"DETAILED_ADDRESS" VARCHAR2(50 BYTE), 
	"EMPLOYEE_ID" NUMBER NOT NULL, 
	"AREA_ID" NUMBER,
    CONSTRAINT client_area_fk FOREIGN KEY (area_id)
    REFERENCES area (area_id),
    CONSTRAINT client_employee_fk FOREIGN KEY (employee_id)
    REFERENCES employee (employee_id),
    CONSTRAINT client_rating_chk CHECK (credit_rating IN (1, 2, 3))
);

COMMENT ON COLUMN "CLIENT"."CREDIT_RATING" IS '3: Excellent, 2: Good, 1: Poor';
--------------------------------------------------------
--  DDL for Table PRODUCT_ORDER
--------------------------------------------------------

CREATE TABLE "PRODUCT_ORDER" 
(	"ORDER_ID" NUMBER CONSTRAINT product_order_pk PRIMARY KEY, 
	"ORDER_DATE" DATE DEFAULT sysdate NOT NULL, 
	"SHIPPING_DATE" DATE, 
	"PAYMENT_METHOD" CHAR(1 BYTE), 
	"EMPLOYEE_ID" NUMBER, 
	"CLIENT_ID" NUMBER NOT NULL,
    CONSTRAINT product_order_employee_fk FOREIGN KEY (employee_id)
    REFERENCES employee (employee_id),
    CONSTRAINT product_order_client_fk FOREIGN KEY (client_id)
    REFERENCES client (client_id),
    CONSTRAINT product_order_method_chk CHECK(payment_method IN (1, 2))
);

COMMENT ON COLUMN "PRODUCT_ORDER"."PAYMENT_METHOD" IS '1: Credit, 2: Cash';
--------------------------------------------------------
--  DDL for Table ORDER_ITEM
--------------------------------------------------------

CREATE TABLE "ORDER_ITEM" 
(	"ORDER_ID" NUMBER, 
	"ITEM_NUMBER" NUMBER, 
	"SHIPPING_QUANTITY" NUMBER DEFAULT 0 NOT NULL, 
	"ORDERED_QUANTITY" NUMBER NOT NULL, 
	"PRODUCT_ID" NUMBER NOT NULL,
    CONSTRAINT oreder_item_o_quantity_chk CHECK (ordered_quantity > 0),
    CONSTRAINT oreder_item_s_quantity_chk CHECK (shipping_quantity >= 0),
    CONSTRAINT order_item_pk PRIMARY KEY (order_id, item_number),
    CONSTRAINT order_item_order_fk FOREIGN KEY (order_id)
    REFERENCES product_order (order_id),
    CONSTRAINT order_item_product_fk FOREIGN KEY (product_id)
    REFERENCES product (product_id)
);
