
-- standard Function

-- dual table : ���� ���̺� -> ��� Ȯ�ο� �ӽ� ���̺�

SELECT 1 FROM DUAL;
SELECT 'A' FROM DUAL; --��� Ȯ�ο�.
SELECT '��' FROM DUAL;
SELECT 23 * 34 FROM DUAL;

-- ���� �Լ�
-- CHR(N) : ASCII ���� ���ڷ� ��ȯ�ϴ� �Լ�
SELECT CHR(65) FROM DUAL;
SELECT CHR(49) FROM DUAL;

--"�ȳ��ϼ���" + "�ǰ��ϼ���" = "�ȳ��ϼ���ǰ��ϼ���" (JAVA)
-- || ���ڿ��� �����ϴ� ���

SELECT '�ȳ��ϼ���' || '�ǰ��ϼ���' FROM DUAL;
SELECT '�� ������' || CHR(65) || '�Դϴ�' FROM DUAL;


--LPAD(RPAD) : ��ĭ�� �������ڷ� ä���.
SELECT LPAD('BBB',10) FROM DUAL; --LEFT�� ä��°�
SELECT RPAD('BBB',10) FROM DUAL; --RIGHT�� ä��°�
SELECT LPAD('BBB',10,'0') FROM DUAL; --'0'���� ��ĭ ä��°�


-- INSTR == INDEXof('c')    abcd   -> �ε��� ���� �Ѱ��ִ� ��.
-- DB�� 1�������� �����Ѵ�.
SELECT INSTR('123ABC456ABC','A') FROM DUAL;
SELECT INSTR('123ABC456ABC','A',6) FROM DUAL;
SELECT INSTR('123ABC456ABC','A',6,1) FROM DUAL; --6��° �ε��� ���� ù��° A ã�ƶ�
SELECT INSTR('123ABC456ABCABC','A',6,2) FROM DUAL; --6��° �ε��� ���� �ι�° Aã�ƶ�
SELECT INSTR('123ABC456ABCABC','D') FROM DUAL; --���� ���ڴ� 0���� ���´�.

--REPLACE : ����'��' ġȯ
SELECT REPLACE('AAAAABC','A')FROM DUAL; -- �ٲ� ���ڿ� �������ָ� �׳� ��������.
SELECT REPLACE('AAAAABC','A','a')FROM DUAL; -- A�� �ҹ��ڷ� �ٲ�.
SELECT REPLACE('AAAAABC','AA','a')FROM DUAL; -- AA -> aa

--TRANSLATE : ���� ġȯ
SELECT TRANSLATE('AAAAABC','A','a')FROM DUAL;
SELECT TRANSLATE('AAAAABC','AA','a')FROM DUAL; -- ���ڷθ� ��޵Ǽ� ������ A->a�� �ٲ��.





--����
--�ø�
SELECT CEIL(13.1)FROM DUAL;

--����
SELECT FLOOR(13.9)FROM DUAL;

--�¼� ���ϴ� �Լ�
SELECT POWER(3,2)FROM DUAL;

--�ݿø�
SELECT ROUND(13.5)FROM DUAL;

-- ��ȣ
-- SIGN
SELECT SIGN(12) FROM DUAL; -- +�϶��� 1
SELECT SIGN(0) FROM DUAL; -- 0�϶��� 0
SELECT SIGN(-6) FROM DUAL; -- -�϶��� -1

--����
--TRUNC

SELECT TRUNC(12.34567) FROM DUAL; --�Ҽ��� �� ������.
SELECT TRUNC(12.34567,2) FROM DUAL; -- �Ҽ��� 2��°���� ����� ������.
SELECT TRUNC(12.34567,-1) FROM DUAL; -- 1���ڸ����� ������. -->10

--ASCII (�ƽ�Ű�ڵ尪 ã���ش�.)
SELECT ASCII('A')FROM DUAL;

--��ȯ�Լ�
--TO_CHAR (���ڿ��� �ٲٴ� �Լ�)
-- DATE -> VARCHAR2 ���ڿ��� ���´�.
SELECT TO_CHAR(SYSDATE)FROM DUAL; 

SELECT TO_CHAR(SYSDATE,'YYYY-MM-DD-HH-MI-SS')FROM DUAL; 

SELECT TO_CHAR(SYSDATE,'YYYY/MM/DD HH:MI:SS')FROM DUAL; 

--?
SELECT TO_CHAR(TO_DATE(SYSDATE,'YYYY/MM/DD HH:MI:SS'),'YYYY/MM/DD HH:MI:SS') FROM DUAL; 

SELECT SYSDATE FROM DUAL; 


SELECT TO_CHAR(10000000,'$999,999,999,999') FROM DUAL; -- ǥ��� ��Ÿ����


-- TO_DATE
-- VARCHR2 -> DATE (���ڿ� ��¥�������� �ٲ��ִ� �Լ�)
SELECT TO_DATE('20201205') FROM DUAL;

SELECT TO_DATE('20201205', 'YYYYMMDD') FROM DUAL;

SELECT TO_DATE('12052020', 'MMDDYYYY') FROM DUAL;


-- TO_NUMBER      VARCHAR2 -> NUMBER      Integer.parseInt()
SELECT TO_NUMBER('123') + 1 FROM DUAL;

-- LAST_DAY (�� ���� ������ ��¥ ���ϱ�!)
SELECT LAST_DAY('20/11/01') FROM DUAL;

-- SUBSTR       AbcDef      substring(1, 3) -> bc
--                          substring(4) -> ef

SELECT SUBSTR('ABCDEFG',3)FROM DUAL; --3��°������ ���ڸ� �����Ͷ�!
SELECT SUBSTR('ABCDEFG',3,3)FROM DUAL; -- 3��°���� 3���� �����Ͷ�!



















