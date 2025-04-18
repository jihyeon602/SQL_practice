-- 아래는 BUDGET_USE 테이블에 대한 구조를 보여줍니다. 테이블을 수정하실 필요는 없습니다.
DESC BUDGET_USE;

-- 비용이 전체 비용 합계에서 차지하는 비율을 조회해 봅시다.

SELECT 
  ID,
  EXPENSE,
  ROUND(EXPENSE / (SELECT SUM(EXPENSE) FROM BUDGET_USE), 5) AS RATIO_TO_REPORT
FROM BUDGET_USE
ORDER BY ID;

--RATIO_TO_REPORT() 미지원

--DATA
CREATE TABLE BUDGET_USE(
	ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	USE_CODE INTEGER,
	EXPENSE INTEGER
);

INSERT INTO BUDGET_USE(USE_CODE, EXPENSE) VALUES (1, 1000000);
INSERT INTO BUDGET_USE(USE_CODE, EXPENSE) VALUES (2, 50000);
INSERT INTO BUDGET_USE(USE_CODE, EXPENSE) VALUES (1, 1200000);
INSERT INTO BUDGET_USE(USE_CODE, EXPENSE) VALUES (1, 2000000);
INSERT INTO BUDGET_USE(USE_CODE, EXPENSE) VALUES (2, 230000);
INSERT INTO BUDGET_USE(USE_CODE, EXPENSE) VALUES (2, 150000);
INSERT INTO BUDGET_USE(USE_CODE, EXPENSE) VALUES (1, 800000);
INSERT INTO BUDGET_USE(USE_CODE, EXPENSE) VALUES (1, 2000000);
INSERT INTO BUDGET_USE(USE_CODE, EXPENSE) VALUES (1, 1000000);