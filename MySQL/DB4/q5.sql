-- WITH RECURSIVE 를 이용하여 계층형 질의를 작성해보세요.


WITH RECURSIVE CTE(mentee_id, mento_id, lvl) 
AS (
    select mentee_id, mento_id, 0 AS lvl from MEMBER
    where mento_id IS NULL
    
    
    UNION ALL
    
    
    SELECT m.mentee_id, m.mento_id, c.lvl +1
    from MEMBER m 
    join CTE c
    ON m.mento_id = c.mentee_id
)

select mentee_id, mento_id, lvl from CTE
ORDER BY mentee_id;





--data
CREATE TABLE MEMBER(
  	mentee_id		INT NOT NULL	PRIMARY KEY,
  	mento_id		INT
);


INSERT INTO MEMBER VALUES
(1000, NULL),
(1001, NULL),
(1002, 1000),
(1003, 1001),
(1004, 1000),
(1005, 1002),
(1006, 1003),
(1007, 1004),
(1008, 1002),
(1009, 1005),
(1010, 1006),
(1011, 1010);