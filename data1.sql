SELECT * FROM EMPLOYEES;

select * from employees;

--���� �ּ���
--table : column(�׸�), row(�ϳ��� ������) 
--tablespace momory���� -> ����


--table ����
/*
CREATE TABLE ���̺��(
        �÷���1, �ڷ���,
        �÷���2, �ڷ���
        �÷���3, �ڷ���

);

DROP TABLE ���̺��; (���̺� �����ٶ� ��ɾ�)

*/

--�ڷ���
/*
        java                Oracle
        int                 Integer, Number
        double              Number(������ �ڸ���, �Ҽ��� �ڸ���)
        String              VARCHAR2, CHAR, LONG
        Date                DATE
        
*/

-- ���ڿ�
--CHAR
CREATE TABLE TB_CHAR(
    COL1 CHAR(10 BYTE),
    COL2 CHAR(10 CHAR),
    COL3 CHAR(10)
);
-- �⺻ũ�� 10BYTE�� ��Ƶ�.
/*

    INSERT INT ���̺��(�÷���1,�÷���2,�÷���3)
    VALUES(��, ��, ��);
    
    INTEGER -> 123
    STRING -> 'HELLO' (�ڹٶ� �ٸ��� ���� ����ǥ��)
    
    ���� 1���� -> 1BYTE
    �ѱ� 1���� -> 3BYTE

*/
--�ֱ�
INSERT INTO TB_CHAR(COL1,COL2,COL3)
VALUES('ABC','ABC','ABC'); 


SELECT * FROM TB_CHAR;

INSERT INTO TB_CHAR(COL1,COL2,COL3)
VALUES('��','��','��'); 

INSERT INTO TB_CHAR(COL1,COL2,COL3)
VALUES('����','����','����'); 

INSERT INTO TB_CHAR(COL1,COL2,COL3)
VALUES('������','������','������'); 

SELECT COL1, COL2, COL3, LENGTHB(COL1),LENGTHB(COL2),LENGTHB(COL3) -- BYTE�� ���� ��
FROM tb_char;

/*

    CHAR : 10 BYTE   00000 00000
    ABC ->           ABC00 00000
    ��(3BYTE) + 9 = 12BYTE
    --CHAR,�ϳ��� 3BYTE -> 12�� ����
    
    ����(6BYTE) + 8 -> 14
    ������(9BYTE) + 7 -> 16

*/

-- VARCHAR2

CREATE TABLE TB_VARCHAR(
        COL1 VARCHAR2(10 BYTE),
        COL2 VARCHAR2(10 CHAR),
        COL3 VARCHAR2(10)
);

INSERT INTO tb_varchar(COL1, COL2, COL3)
VALUES('ABC','ABC','ABC');

INSERT INTO tb_varchar(COL1, COL2, COL3)
VALUES('������','������','������');

SELECT * FROM tb_varchar;

SELECT COL1, COL2, COL3, LENGTHB(COL1),LENGTHB(COL2),LENGTHB(COL3)
FROM tb_varchar;


/*

    LONG
    �ִ� 2GB���� ����.
    TABLE �� 1���� ��밡��.
    
*/

CREATE TABLE TB_LONG(
        COL1 LONG
        --COL2 LONG

);

CREATE TABLE BOOK(
    TITLE VARCHAR(20),
    BOOOKCONTENT LONG,
    NO NUMBER,
    PRICE NUMBER
);

SELECT * FROM BOOK;

INSERT INTO TB_LONG(COL1) --1COL�� �߰�!
VALUES('SSSSSSSSSSSS');

INSERT INTO TB_LONG(COL1)
VALUES('DDDDDDDDDDDDDDDDD');

-- SELECT COL1, LENGTH(COL1) LENGTH �� ��� �Ұ�!
SELECT * FROM tb_LONG;


-- ����(����, �Ҽ�)
-- INTEGER ���� 

CREATE TABLE TB_INTEGER(
    COL1 INTEGER, 
    COL2 INTEGER
);

INSERT INTO TB_INTEGER(COL1,COL2)
VALUES('123','456.1');
--�ڹٿ����� �ȵǴµ�, ORACLE������ ����!
SELECT * FROM TB_INTEGER;


-- NUMBER�� ����, �Ҽ� �� �� ������.
CREATE TABLE TB_NUMBER(
    COL1 NUMBER,
    COL2 NUMBER(5), --5�ڸ�������, �Ҽ����� ���� (����)
    COL3 NUMBER(5,2), --�Ҽ��� 2°�ڸ�������
    COL4 NUMBER(*,2) -- ��ü�ڸ� / �Ҽ��� 2°�ڸ�����
);

INSERT INTO TB_NUMBER(COL1,COL2,COL3,COL4)
VALUES(1234.5678,12345.12,123.456,1234.56789);

SELECT * FROM TB_NUMBER;


-- ��¥ DATE (���� �򰥸���)
-- ����, ��, ��, ��, ��, ��

CREATE TABLE TB_DATE(
    COL1 DATE,
    COL2 DATE
);

--����ð� ��� -1�� ������¥�� ���´�. (��갡��)
INSERT INTO TB_DATE(COL1,COL2)
VALUES(SYSDATE,SYSDATE - 1); 

SELECT
*
FROM tb_date;

--TO_DATE(��¥ ���ڿ�, ���� ���ڿ�) / ���� �����ֱ�.
INSERT INTO TB_DATE(COL1,COL2)
VALUES(SYSDATE,TO_DATE('2020-12-25 12:30:25','YYYY-MM-DD HH:MI:SS') );

-- ���ڿ��� ����ֱ�. ���� �� �������൵ �ȴ�.
INSERT INTO TB_DATE(COL1,COL2)
VALUES(SYSDATE,'20/12/30');

-- TOKEN���� ����־ �����ϴ�.
INSERT INTO TB_DATE(COL1,COL2)
VALUES(SYSDATE,TO_DATE('20201225123025','YYYYMMDDHHMISS') );


DROP TABLE TB_CHAR;
DROP TABLE TB_VARCHAR;
DROP TABLE TB_LONG;
DROP TABLE TB_NUMBER;
DROP TABLE TB_INTEGER;
DROP TABLE TB_DATE;


