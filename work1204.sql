
--����1 EMPLOYEES Table�� ��� �ڷḦ ����Ͽ���.

SELECT * FROM EMPLOYEES; 


--����2 EMPLOYEES Table�� �÷����� ��� ����϶�.

DESC EMPLOYEES;


--���� 3 EMT���� �����ȣ, �̸�, �޿�, ������ ���

SELECT employee_id  , first_name  , salary , JOB_ID
FROM employees;



--���� 4 ��� �������� �޿��� $300���� ��Ű�� ���ؼ� ���� �����ڸ�
--       ����ϰ� ����� SALARY+300�� ���÷��� �մϴ�.

SELECT employee_id  , first_name , salary , salary+300
FROM employees;



-- ���� 5 EMP ���̺��� �����ȣ, �̸�, �޿�, ���ʽ�, ���ʽ� �ݾ��� ����Ͽ���. 
--       (����� ���ʽ��� ���� + (����*Ŀ�̼�))

SELECT employee_id  , first_name  , salary , commission_pct * salary, salary+(commission_pct * salary)
FROM employees;



-- ����6 EMPLOYEES ���̺��� LAST_NAME�� �̸����� SALARY�� �޿��� ����Ͽ���.

SELECT LAST_NAME AS "�̸�", SALARY AS "�޿�"
FROM employees;



-- ����7 EMPLOYEES ���̺��� LAST_NAME�� Name���� SALARY *12�� Annual Salary(����)�� ����Ͽ���

SELECT LAST_NAME AS "NAME", SALARY * 12 AS "����"
FROM employees;



-- ����9 EMPLOYEES ���̺��� �̸��� ������ �����Ͽ� ����Ͽ���.

SELECT FIRST_NAME || JOB_ID AS "Employees"
FROM EMPLOYEES; 


-- ����10) EMPLOYEES ���̺��� �̸��� ������ ��KING is a PRESIDENT�� �������� ����Ͽ���.

SELECT FIRST_NAME || ' is a ' || JOB_ID as "Enployees"
FROM EMPLOYEES; 



-- ����11) EMPLOYEES ���̺��� �̸��� ������ ��KING: 1 Year salary = 60000�� �������� ����Ͽ���.

SELECT FIRST_NAME || ' : 1 Year salary = ' || salary*12 as "MONTHLY"
FROM EMPLOYEES;


-- ����12) EMPLOYEES ���̺��� JOB�� ��� ����϶�.

SELECT job_id
FROM EMPLOYEES;


