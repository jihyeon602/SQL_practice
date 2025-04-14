CREATE TABLE EMPLOYEE(
  employee_id		INT 		NOT NULL PRIMARY KEY,
  department_name	VARCHAR(30) NOT NULL,
  salary			INT 		NOT NULL
);

INSERT INTO EMPLOYEE VALUES
(10000, '영업', 9000),
(10001, '개발', 8500),
(10002, '개발', 9000),
(10003, '운영', 7000),
(10004, '기획', 9500),
(10005, '사업', 7500),
(10006, '영업', 6000),
(10007, '기획', 10000),
(10008, '사업', 8000),
(10009, '개발', 9000),
(10010, '개발', 7500);