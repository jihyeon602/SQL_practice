CREATE TABLE lecture_basic (
    id				INT             NOT NULL,
    lecture_name	VARCHAR(50)		NOT NULL,
    student_number	INT				NOT NULL,
    student_name	VARCHAR(30)		NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO lecture_basic VALUES
(1, 'math', 10001, 'HongGildong'),
(2, 'korean', 10001, 'HongGildong'),
(3, 'math', 10003, 'HongGilsun'),
(4, 'math', 10004, 'KimChulsoo');


CREATE TABLE lecture_special (
    id				INT             NOT NULL,
    lecture_name	VARCHAR(50)		NOT NULL,
    student_number	INT				NOT NULL,
    student_name	VARCHAR(30)		NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO lecture_special VALUES
(1, 'piano', 10001, 'HongGildong'),
(2, 'kendo', 10002, 'KimAmugae'),
(3, 'piano', 10003, 'HongGilsun'),
(4, 'kendo', 10003, 'HongGilsun');