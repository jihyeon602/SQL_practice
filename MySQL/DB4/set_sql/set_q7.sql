CREATE TABLE REQUEST_HIST(
	request_id		INT			NOT NULL PRIMARY KEY,
	req_status		VARCHAR(50)	NOT NULL,
	req_member_id	VARCHAR(10)	NOT NULL
);

INSERT INTO REQUEST_HIST VALUES
(10001, 'success', 'P001'),
(10002, 'success', 'P002'),
(10003, 'fail', 'P001'),
(10004, 'success', 'P002'),
(10005, 'fail', 'P003'),
(10006, 'fail', 'P001');


CREATE TABLE MEMBER(
	member_id		VARCHAR(10)	NOT NULL PRIMARY KEY,
	member_name		VARCHAR(50)	NOT NULL
);

INSERT INTO MEMBER VALUES
('P001', 'Kim'),
('P002', 'Park'),
('P003', 'Lee');