SELECT * FROM EMPLOYEES;

select * from employees;

--한줄 주석문
--table : column(항목), row(하나의 데이터) 
--tablespace momory공간 -> 파일


--table 생성
/*
CREATE TABLE 테이블명(
        컬럼명1, 자료형,
        컬럼명2, 자료형
        컬럼명3, 자료형

);

DROP TABLE 테이블명; (테이블 날려줄때 명령어)

*/

--자료형
/*
        java                Oracle
        int                 Integer, Number
        double              Number(정수의 자리수, 소수의 자리수)
        String              VARCHAR2, CHAR, LONG
        Date                DATE
        
*/

-- 문자열
--CHAR
CREATE TABLE TB_CHAR(
    COL1 CHAR(10 BYTE),
    COL2 CHAR(10 CHAR),
    COL3 CHAR(10)
);
-- 기본크기 10BYTE로 잡아둠.
/*

    INSERT INT 테이블명(컬럼명1,컬럼명2,컬럼명3)
    VALUES(값, 값, 값);
    
    INTEGER -> 123
    STRING -> 'HELLO' (자바랑 다르게 작은 따옴표로)
    
    영어 1문자 -> 1BYTE
    한글 1문자 -> 3BYTE

*/
--넣기
INSERT INTO TB_CHAR(COL1,COL2,COL3)
VALUES('ABC','ABC','ABC'); 


SELECT * FROM TB_CHAR;

INSERT INTO TB_CHAR(COL1,COL2,COL3)
VALUES('가','가','가'); 

INSERT INTO TB_CHAR(COL1,COL2,COL3)
VALUES('가나','가나','가나'); 

INSERT INTO TB_CHAR(COL1,COL2,COL3)
VALUES('가나다','가나다','가나다'); 

SELECT COL1, COL2, COL3, LENGTHB(COL1),LENGTHB(COL2),LENGTHB(COL3) -- BYTE의 길이 수
FROM tb_char;

/*

    CHAR : 10 BYTE   00000 00000
    ABC ->           ABC00 00000
    가(3BYTE) + 9 = 12BYTE
    --CHAR,하나가 3BYTE -> 12로 나옴
    
    가나(6BYTE) + 8 -> 14
    가나다(9BYTE) + 7 -> 16

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
VALUES('가나다','가나다','가나다');

SELECT * FROM tb_varchar;

SELECT COL1, COL2, COL3, LENGTHB(COL1),LENGTHB(COL2),LENGTHB(COL3)
FROM tb_varchar;


/*

    LONG
    최대 2GB까지 저장.
    TABLE 당 1개만 사용가능.
    
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

INSERT INTO TB_LONG(COL1) --1COL에 추가!
VALUES('SSSSSSSSSSSS');

INSERT INTO TB_LONG(COL1)
VALUES('DDDDDDDDDDDDDDDDD');

-- SELECT COL1, LENGTH(COL1) LENGTH 는 사용 불가!
SELECT * FROM tb_LONG;


-- 숫자(정수, 소수)
-- INTEGER 정수 

CREATE TABLE TB_INTEGER(
    COL1 INTEGER, 
    COL2 INTEGER
);

INSERT INTO TB_INTEGER(COL1,COL2)
VALUES('123','456.1');
--자바에서는 안되는데, ORACLE에서는 가능!
SELECT * FROM TB_INTEGER;


-- NUMBER는 정수, 소수 둘 다 가능함.
CREATE TABLE TB_NUMBER(
    COL1 NUMBER,
    COL2 NUMBER(5), --5자리까지만, 소수점은 생략 (정수)
    COL3 NUMBER(5,2), --소숫점 2째자리까지만
    COL4 NUMBER(*,2) -- 전체자리 / 소수점 2째자리까지
);

INSERT INTO TB_NUMBER(COL1,COL2,COL3,COL4)
VALUES(1234.5678,12345.12,123.456,1234.56789);

SELECT * FROM TB_NUMBER;


-- 날짜 DATE (가장 헷갈린다)
-- 연도, 월, 일, 시, 분, 초

CREATE TABLE TB_DATE(
    COL1 DATE,
    COL2 DATE
);

--현재시간 취득 -1은 어제날짜가 나온다. (계산가능)
INSERT INTO TB_DATE(COL1,COL2)
VALUES(SYSDATE,SYSDATE - 1); 

SELECT
*
FROM tb_date;

--TO_DATE(날짜 문자열, 형식 문자열) / 형식 적어주기.
INSERT INTO TB_DATE(COL1,COL2)
VALUES(SYSDATE,TO_DATE('2020-12-25 12:30:25','YYYY-MM-DD HH:MI:SS') );

-- 문자열로 집어넣기. 연도 다 안적어줘도 된다.
INSERT INTO TB_DATE(COL1,COL2)
VALUES(SYSDATE,'20/12/30');

-- TOKEN없이 집어넣어도 가능하다.
INSERT INTO TB_DATE(COL1,COL2)
VALUES(SYSDATE,TO_DATE('20201225123025','YYYYMMDDHHMISS') );


DROP TABLE TB_CHAR;
DROP TABLE TB_VARCHAR;
DROP TABLE TB_LONG;
DROP TABLE TB_NUMBER;
DROP TABLE TB_INTEGER;
DROP TABLE TB_DATE;


