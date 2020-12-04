-- DML
-- insert delete select(90%) update
/*

    Query
                Dao                   <-  Database(Container)
                    list  <--  file
                    save   --> file
                Dto                   <- 

        SELECT 
           (��,COLUMN,�Լ�,SUB QUERY)
        FROM
            (TABLE��, SUB QUERY)
        
*/

SELECT 1 FROM DUAL;

SELECT * FROM employees; --������̺� �����ִ���? ��ü �� �����Ͷ�.

-- ���ϴ� ������ ���ؼ� ������ �� �ִ�.
SELECT employee_id, first_name, salary 
FROM employees;

-- Alias -- as �� ���� "" ���� �Է��ϸ� ����Ǽ� ���´�.
--"" �Ⱥٿ��� ������, null���� ���� ������ ����.
SELECT employee_id AS "��� ��ȣ", first_name as "�̸�", salary "����"
FROM employees;


-- || ���ڿ� ��ġ��! �÷� ���� �������� ���´�! 
SELECT employee_id || first_name || salary 
FROM employees;

-- ������ 

SELECT first_name, last_name, salary, salary*12 as "�� ��" --����
FROM employees;


