
--쿼리
SELECT t.user_id, t.date, a.country FROM ticket t JOIN airplane a 
ON t.airplane_id = a.id WHERE a.country NOT IN ('Korea', 'China', 'Japan')
ORDER BY t.user_id;
-------


--table
create table if not exists airplane(
    id int not null,
    code varchar(3) not null,
    country varchar(16) not null,
    primary key (id)
);

create table if not exists ticket(
    user_id int not null,
    airplane_id int not null,
    date varchar(16),
    time varchar(16),
    primary key (user_id, airplane_id, date, time),
    FOREIGN KEY (airplane_id) REFERENCES airplane(id)
	
);

insert into airplane values(100, 'AAR', 'Korea');
insert into airplane values(101, 'CBF', 'China');
insert into airplane values(102, 'DYA', 'U.S.A');
insert into airplane values(103, 'CNY', 'China');
insert into airplane values(104, 'GIA', 'Indonesia');
insert into airplane values(105, 'PAL', 'Philippines');
insert into airplane values(106, 'CXA', 'China');
insert into airplane values(107, 'JAL', 'Japan');
insert into airplane values(108, 'ESR', 'Korea');
insert into airplane values(109, 'SRT', 'Russia');

insert into ticket values(1000, 101, '2019-09-28', '13:10:00');
insert into ticket values(1001, 103, '2019-12-23', '12:10:00');
insert into ticket values(1002, 109, '2019-11-16', '11:50:00');
insert into ticket values(1003, 100, '2019-10-17', '23:30:00');
insert into ticket values(1004, 102, '2019-03-12', '15:20:00');
insert into ticket values(1000, 103, '2019-12-23', '12:10:00');
insert into ticket values(1001, 104, '2019-07-25', '18:00:00');
insert into ticket values(1004, 105, '2019–04-12', '13:10:00');
insert into ticket values(1000, 106, '2019-12-11', '09:20:00');
insert into ticket values(1000, 107, '2019-11-08', '23:10:00');
insert into ticket values(1001, 108, '2019-09-09', '15:10:00');
insert into ticket values(1004, 101, '2019–09-28', '13:10:00');
insert into ticket values(1002, 100, '2019-02-06', '06:50:00');
insert into ticket values(1003, 101, '2019-09-28', '13:10:00');
insert into ticket values(1004, 102, '2019-04-12', '19:50:00');


