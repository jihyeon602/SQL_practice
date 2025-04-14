CREATE TABLE FIRST_NAME_T(
	id			INT			NOT NULL PRIMARY KEY,
	first_name	VARCHAR(10) NOT NULL
);

INSERT into FIRST_NAME_T VALUES
(1, 'Kim'),
(2, 'Lee'),
(3, 'Choi');

CREATE TABLE LAST_NAME_T(
	id			INT			NOT NULL PRIMARY KEY,
	last_name	VARCHAR(30) NOT NULL
);

INSERT into LAST_NAME_T VALUES
(1, 'Chulsoo'),
(2, 'Gildong'),
(3, 'Yeonghee');