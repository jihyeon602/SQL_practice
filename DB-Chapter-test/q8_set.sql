--쿼리
SELECT user_id, date, time FROM ticket WHERE date BETWEEN '2019-10-01' AND '2019-12-31'
AND country = 'Korea';




--table
create table if not exists ticket(
    user_id int not null,
    airplane_id int not null,
    date varchar(16),
    time varchar(16),
    country varchar(16) not null,
    primary key (user_id, airplane_id, date, time)
	
);

insert into ticket values(1000, 101, '2019-09-28', '13:10:00', 'China');
insert into ticket values(1001, 103, '2019-12-23', '12:10:00', 'Korea');
insert into ticket values(1002, 109, '2019-11-16', '11:50:00', 'Russia');
insert into ticket values(1005, 100, '2019-10-01', '12:40:00', 'Korea');
insert into ticket values(1005, 100, '2019-09-01', '07:00:00', 'Korea');
insert into ticket values(1003, 100, '2019-10-17', '23:30:00', 'Korea');
insert into ticket values(1004, 102, '2019-03-12', '15:20:00', 'U.S.A');
insert into ticket values(1000, 103, '2019-12-23', '12:10:00', 'Korea');
insert into ticket values(1001, 104, '2019-07-25', '18:00:00', 'Indonesia');
insert into ticket values(1004, 105, '2019–04-12', '13:10:00', 'Philippines');
insert into ticket values(1006, 104, '2019-12-31', '15:40:00', 'Korea');
insert into ticket values(1000, 106, '2019-12-11', '09:20:00', 'China');
insert into ticket values(1000, 107, '2019-11-08', '23:10:00', 'Japan');
insert into ticket values(1001, 108, '2019-09-09', '15:10:00', 'Korea');
insert into ticket values(1004, 101, '2019–09-28', '13:10:00', 'China');
insert into ticket values(1002, 100, '2019-02-06', '06:50:00', 'Korea');
insert into ticket values(1003, 101, '2019-09-28', '13:10:00', 'China');
insert into ticket values(1004, 102, '2019-04-12', '19:50:00', 'U.S.A');
insert into ticket values(1007, 108, '2019-08-31', '22:10:00', 'Korea');
insert into ticket values(1008, 100, '2020-01-01', '16:00:00', 'Korea');
