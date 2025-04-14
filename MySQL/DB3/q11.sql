-- 아래는 EMPLOYEE 테이블에 대한 구조를 보여줍니다. 테이블을 수정하실 필요는 없습니다.
DESC EMPLOYEE;

-- 자신의 관리자의 급여보다 높거나 같은 급여를 가진 직원의 ID를 출력하는 쿼리를 작성해봅시다.
-- 연관 서브쿼리

SELECT e1.employee_id FROM EMPLOYEE e1 JOIN EMPLOYEE e2 
ON e1.manager_id = e2.employee_id WHERE e1.salary >= e2.salary 
ORDER BY e1.employee_id;


------data
CREATE TABLE EMPLOYEE(
  employee_id	INT NOT NULL PRIMARY KEY,
  manager_id	INT,
  salary		INT NOT NULL
);

INSERT INTO EMPLOYEE VALUES
(10000, NULL, 9000),
(10001, NULL, 8500),
(10002, 10000, 9000),
(10003, 10002, 7000),
(10004, 10001, 9500),
(10005, 10003, 7500),
(10006, 10003, 5000);