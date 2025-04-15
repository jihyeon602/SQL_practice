create table if not exists concert(
    id int not null,
    name varchar(16) not null,
    date varchar(16),
    time varchar(16),
    primary key (id)
	
);

insert into concert values(1001, 'Olivia', '2019-09-28', '13:10:00');
insert into concert values(1002, 'Noah', '2019-12-23', '12:10:00');
insert into concert values(1003, 'Emma', '2019-11-16', '11:50:00');
insert into concert values(1004, 'Liam', '2019-10-17', '23:30:00');
insert into concert values(1005, 'Ava', '2019-03-12', '15:20:00');

SELECT * FROM concert;