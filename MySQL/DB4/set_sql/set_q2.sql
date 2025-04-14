CREATE TABLE student (
    id			    INT             NOT NULL,
    student_number  int				NOT NULL,
    name  			VARCHAR(30)     NOT NULL,
    grade  			INT 		    NOT NULL,
    email      		VARCHAR(100)			,    
    PRIMARY KEY (id)
);

INSERT INTO student VALUES
(1, 10001, 'HongGildong', 2, 'hong@naver.com'),
(2, 10002, 'KimAmoogae', 3, null),
(3, 10003, 'HongGilsun', 1, 'hong.sun@naver.com'),
(4, 10004, 'KimChulsoo', 3, null),
(5, 10005, 'LeeMooMyeong', 4, null);


CREATE TABLE lecture_special (
    id				INT             NOT NULL,
    lecture_name	VARCHAR(50)		NOT NULL,
    name			VARCHAR(30)		NOT NULL,
    email			VARCHAR(100)	NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO lecture_special VALUES
(1, 'piano', 'Kimseulki', 'seulki@naver.com'),
(2, 'kendo', 'KimGuest', 'guest@naver.com'),
(3, 'piano', 'HongGildong', 'hong@naver.com'),
(4, 'kendo', 'HongGilsun', 'hsun@naver.com');