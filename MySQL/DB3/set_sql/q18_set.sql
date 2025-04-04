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