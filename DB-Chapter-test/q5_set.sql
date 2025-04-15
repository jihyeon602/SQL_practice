CREATE TABLE member (
    num         int,
    name        varchar(8) NOT NULL,
    address     varchar(16) NOT NULL,
    PRIMARY KEY(num)
);

INSERT INTO member VALUES (1, '황영주', '서울시 중구');
INSERT INTO member VALUES (2, '김수련', '부산시 동래구');
INSERT INTO member VALUES (3, '이성현', '광주시 남구');
INSERT INTO member VALUES (4, '정한나', '광주시 남구');
INSERT INTO member VALUES (5, '이명연', '부산시 영도구');
INSERT INTO member VALUES (6, '김영숙', '경기도 과천시');
INSERT INTO member VALUES (7, '강정은', '경기도 시흥시');
INSERT INTO member VALUES (8, '고영주', '대전시 서구');
INSERT INTO member VALUES (9, '안철영', '경기도 수원시');
INSERT INTO member VALUES (10, '김진모', '광주시 서구');


SELECT * FROM member WHERE name = '김진모';