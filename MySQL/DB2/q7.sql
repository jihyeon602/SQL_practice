-- INSERT문을 이용해 쿼리를 작성해 보세요.
CREATE TABLE IF NOT EXISTS employees (
    emp_no      INT             NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,    
    hire_date   DATE            NOT NULL,
    superior_no INT                     ,
    PRIMARY KEY (emp_no)
);

INSERT INTO employees VALUES
(10001, '1953-09-02', 'Georgi', 'Facello', 'M', '1986-06-26' NULL)
-- 값을 잘 넣었는지 확인하는 코드입니다. 수정하지마세요!
SELECT * FROM employees;
