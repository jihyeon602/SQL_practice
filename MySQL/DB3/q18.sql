-- 아래는 BOOK, BOOK_STOCK 테이블에 대한 구조를 보여줍니다. 테이블을 수정하실 필요는 없습니다.
DESC BOOK;
DESC BOOK_STOCK;

-- BOOK_STOCK 테이블에서 재고가 1이상인 데이터의 책이름, 책작가 정보를 조회후, BOOK테이블에 IN을 활용하여 조회하는 쿼리를 작성해봅시다.

SELECT b1.book_id, b1.book_name, b1.book_writer, b1.price FROM BOOK b1 
WHERE (b1.book_name, b1.book_writer) 
IN (
    SELECT b2.book_name, b2.book_writer
    FROM BOOK_STOCK b2
    WHERE b2.stock >= 1
)
ORDER BY b1.book_id;







--DATA

CREATE TABLE BOOK(
  book_id		INT 			NOT NULL PRIMARY KEY,
  book_name		VARCHAR(100)	NOT NULL,
  book_writer	VARCHAR(100)	NOT NULL,
  price			INT				NOT NULL
);

INSERT INTO BOOK VALUES
(1, 'Hello SQL', 'Elice', 10000),
(2, 'Hello JAVA', 'KIM', 20000),
(3, 'Hello PYTHON', 'MOON', 15000),
(4, 'Hello SERVER', 'SONG', 30000);

CREATE TABLE BOOK_STOCK(
  stock_id		INT 			NOT NULL PRIMARY KEY,
  book_name		VARCHAR(100)	NOT NULL,
  book_writer	VARCHAR(100)	NOT NULL,
  stock			INT				NOT NULL
);
INSERT INTO BOOK_STOCK VALUES
(1001, 'Hello SQL', 'Elice', 0),
(1002, 'Hello JAVA', 'KIM', 2),
(1003, 'Hello PYTHON', 'MOON', 3),
(1004, 'Hello SERVER', 'SONG', 0);