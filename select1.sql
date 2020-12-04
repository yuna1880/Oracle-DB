-- DML
-- insert delete select(90%) update
/*

    Query
                Dao                   <-  Database(Container)
                    list  <--  file
                    save   --> file
                Dto                   <- 

        SELECT 
           (값,COLUMN,함수,SUB QUERY)
        FROM
            (TABLE명, SUB QUERY)
        
*/

SELECT 1 FROM DUAL;

SELECT * FROM employees; --사원테이블에 뭐가있는지? 전체 다 가져와라.

-- 원하는 정보만 정해서 가져올 수 있다.
SELECT employee_id, first_name, salary 
FROM employees;

-- Alias -- as 를 쓰고 "" 정보 입력하면 적용되서 나온다.
--"" 안붙여도 되지만, null값이 오면 에러가 난다.
SELECT employee_id AS "사원 번호", first_name as "이름", salary "월급"
FROM employees;


-- || 문자열 합치기! 컬럼 전부 합쳐져서 나온다! 
SELECT employee_id || first_name || salary 
FROM employees;

-- 연산자 

SELECT first_name, last_name, salary, salary*12 as "연 봉" --연봉
FROM employees;


