CREATE TABLE request_past (
    id			INT             NOT NULL,
    name		VARCHAR(100)	NOT NULL,
  	number		VARCHAR(20)		NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO request_past VALUES
(1, '김원숭', 01012345678),
(2, '김호랑', 01011112222),
(3, '이기린', 01098765432),
(4, '권펭귄', 01011116789),
(5, '김강아지', 01099998765);


CREATE TABLE request_new (
    id			INT             NOT NULL,
    name		VARCHAR(100)	NOT NULL,
  	number		VARCHAR(20)		NOT NULL,
    email		VARCHAR(100)	NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO request_new VALUES
(1, '최호랑', 01022221234, 'ho@naver.com'),
(2, '이기린', 01098765432, 'girin@naver.com'),
(3, '김공룡', 01033331234, 'gong@naver.com'),
(4, '이토끼', 01012345679, 'rabbit@naver.com'),
(5, '박수달', 01012345555, 'park@naver.com'),
(6, '김강아지', 01099998765, 'dog@naver.com');