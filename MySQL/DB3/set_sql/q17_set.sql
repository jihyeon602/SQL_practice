CREATE TABLE EMPLOYEE(
  employee_id	INT NOT NULL PRIMARY KEY,
  salary		INT NOT NULL,
  position		VARCHAR(10) NOT NULL
);

INSERT INTO EMPLOYEE VALUES
(10000, 9000, '사장'),
(10001, 8000, '부장'),
(10002, 7800, '과장'),
(10003, 7500, '과장'),
(10004, 6800, '대리'),
(10005, 7000, '대리'),
(10006, 6000, '대리'),
(10007, 5500, '사원'),
(10008, 4500, '사원'),
(10009, 7000, '사원');
