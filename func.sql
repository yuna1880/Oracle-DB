
-- standard Function

-- dual table : 가상 테이블 -> 결과 확인용 임시 테이블

SELECT 1 FROM DUAL;
SELECT 'A' FROM DUAL; --결과 확인용.
SELECT '가' FROM DUAL;
SELECT 23 * 34 FROM DUAL;

-- 문자 함수
-- CHR(N) : ASCII 값을 문자로 변환하는 함수
SELECT CHR(65) FROM DUAL;
SELECT CHR(49) FROM DUAL;

--"안녕하세요" + "건강하세요" = "안녕하세요건강하세요" (JAVA)
-- || 문자열을 연결하는 경우

SELECT '안녕하세요' || '건강하세요' FROM DUAL;
SELECT '내 점수는' || CHR(65) || '입니다' FROM DUAL;


--LPAD(RPAD) : 빈칸을 지정문자로 채운다.
SELECT LPAD('BBB',10) FROM DUAL; --LEFT에 채우는것
SELECT RPAD('BBB',10) FROM DUAL; --RIGHT에 채우는것
SELECT LPAD('BBB',10,'0') FROM DUAL; --'0'으로 빈칸 채우는것


-- INSTR == INDEXof('c')    abcd   -> 인덱스 값을 넘겨주는 것.
-- DB는 1번지부터 시작한다.
SELECT INSTR('123ABC456ABC','A') FROM DUAL;
SELECT INSTR('123ABC456ABC','A',6) FROM DUAL;
SELECT INSTR('123ABC456ABC','A',6,1) FROM DUAL; --6번째 인덱스 이후 첫번째 A 찾아라
SELECT INSTR('123ABC456ABCABC','A',6,2) FROM DUAL; --6번째 인덱스 이후 두번째 A찾아라
SELECT INSTR('123ABC456ABCABC','D') FROM DUAL; --없는 글자는 0으로 나온다.

--REPLACE : 문자'열' 치환
SELECT REPLACE('AAAAABC','A')FROM DUAL; -- 바꿀 문자열 안정해주면 그냥 지워진다.
SELECT REPLACE('AAAAABC','A','a')FROM DUAL; -- A가 소문자로 바뀜.
SELECT REPLACE('AAAAABC','AA','a')FROM DUAL; -- AA -> aa

--TRANSLATE : 문자 치환
SELECT TRANSLATE('AAAAABC','A','a')FROM DUAL;
SELECT TRANSLATE('AAAAABC','AA','a')FROM DUAL; -- 문자로만 취급되서 온전히 A->a로 바뀐다.





--숫자
--올림
SELECT CEIL(13.1)FROM DUAL;

--내림
SELECT FLOOR(13.9)FROM DUAL;

--승수 구하는 함수
SELECT POWER(3,2)FROM DUAL;

--반올림
SELECT ROUND(13.5)FROM DUAL;

-- 부호
-- SIGN
SELECT SIGN(12) FROM DUAL; -- +일때는 1
SELECT SIGN(0) FROM DUAL; -- 0일때는 0
SELECT SIGN(-6) FROM DUAL; -- -일때는 -1

--버림
--TRUNC

SELECT TRUNC(12.34567) FROM DUAL; --소수점 다 날린다.
SELECT TRUNC(12.34567,2) FROM DUAL; -- 소수점 2번째까지 남기고 버린다.
SELECT TRUNC(12.34567,-1) FROM DUAL; -- 1의자리까지 버린다. -->10

--ASCII (아스키코드값 찾아준다.)
SELECT ASCII('A')FROM DUAL;

--변환함수
--TO_CHAR (문자열로 바꾸는 함수)
-- DATE -> VARCHAR2 문자열로 들어온다.
SELECT TO_CHAR(SYSDATE)FROM DUAL; 

SELECT TO_CHAR(SYSDATE,'YYYY-MM-DD-HH-MI-SS')FROM DUAL; 

SELECT TO_CHAR(SYSDATE,'YYYY/MM/DD HH:MI:SS')FROM DUAL; 

--?
SELECT TO_CHAR(TO_DATE(SYSDATE,'YYYY/MM/DD HH:MI:SS'),'YYYY/MM/DD HH:MI:SS') FROM DUAL; 

SELECT SYSDATE FROM DUAL; 


SELECT TO_CHAR(10000000,'$999,999,999,999') FROM DUAL; -- 표기법 나타내기


-- TO_DATE
-- VARCHR2 -> DATE (문자열 날짜형식으로 바꿔주는 함수)
SELECT TO_DATE('20201205') FROM DUAL;

SELECT TO_DATE('20201205', 'YYYYMMDD') FROM DUAL;

SELECT TO_DATE('12052020', 'MMDDYYYY') FROM DUAL;


-- TO_NUMBER      VARCHAR2 -> NUMBER      Integer.parseInt()
SELECT TO_NUMBER('123') + 1 FROM DUAL;

-- LAST_DAY (그 달의 마지막 날짜 구하기!)
SELECT LAST_DAY('20/11/01') FROM DUAL;

-- SUBSTR       AbcDef      substring(1, 3) -> bc
--                          substring(4) -> ef

SELECT SUBSTR('ABCDEFG',3)FROM DUAL; --3번째부터의 문자를 가져와라!
SELECT SUBSTR('ABCDEFG',3,3)FROM DUAL; -- 3번째부터 3문자 가져와라!



















