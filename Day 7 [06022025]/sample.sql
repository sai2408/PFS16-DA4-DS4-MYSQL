USE EXAMPLE1;

CREATE TABLE HELLO(
		C11 INT
);
SELECT * FROM HELLO;

-- ADD ONE COLUMN
ALTER TABLE HELLO ADD C12 INT;
SELECT * FROM HELLO;

ALTER TABLE HELLO ADD C13 INT PRIMARY KEY;
SELECT * FROM HELLO;

-- ADD MULTIPLE COLUMNS [ MORE THAN ONE ]
ALTER TABLE HELLO ADD (
	C14 VARCHAR(10),
    C15 SET("A","B","C"),
    C16 ENUM("HELLO","WORLD")  
);
SELECT * FROM HELLO;

-- DROP COLUMN
ALTER TABLE HELLO DROP COLUMN C13;
SELECT * FROM HELLO;

CREATE TABLE HELLO1(
	C11 INT PRIMARY KEY,
    C12 VARCHAR(10)
);
CREATE TABLE HELLO2(
	C21 INT PRIMARY KEY,
    C32 INT,
    FOREIGN KEY (C32) REFERENCES HELLO1(C11)
);
DESCRIBE HELLO1;
ALTER TABLE HELLO1 DROP COLUMN C12;
DESCRIBE HELLO1;

DESCRIBE HELLO2;
ALTER TABLE HELLO2 DROP COLUMN C21;
DESCRIBE HELLO2;

DESCRIBE HELLO1;
ALTER TABLE HELLO1 DROP COLUMN C11;

-- MODIFY COLUMN DATA TYPE
DESCRIBE HELLO;
ALTER TABLE HELLO MODIFY COLUMN C11 VARCHAR(10);
DESCRIBE HELLO;

-- ADD CONSTRAINT
CREATE TABLE HELLO3(
	C11 INT,
    C12 VARCHAR(100)
);
DESCRIBE HELLO3;
ALTER TABLE HELLO3 ADD CONSTRAINT PRIMARY KEY (C11);
DESCRIBE HELLO3;

-- DROP CONSTRAINT
DESCRIBE HELLO3;
ALTER TABLE HELLO3 DROP PRIMARY KEY;
DESCRIBE HELLO3;

-- RENAME COLUMN NAME
DESCRIBE HELLO3;
ALTER TABLE HELLO3 RENAME COLUMN C11 TO ROLL;
DESCRIBE HELLO3;

-- DROP
SHOW TABLES;
DROP TABLE ABC1;
SHOW TABLES;
DESCRIBE HELLO1;
DESCRIBE HELLO2;
DROP TABLE HELLO1;

DROP TABLE HELLO2;
DROP TABLE HELLO1;