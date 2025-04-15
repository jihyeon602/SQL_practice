create table if not exists test(
    id int not null,
    kor int not null,
    eng int not null,
    math int not null,
    primary key (id)
);


insert into test values(1000, 85, 30, 70);
insert into test values(1001, 60, 45, 25);
insert into test values(1002, 100, 80, 50);
insert into test values(1003, 55, 45, 85);
insert into test values(1004, 35, 35, 60);
insert into test values(1005, 45, 65, 50);
insert into test values(1006, 80, 70, 70);
insert into test values(1007, 55, 85, 75);
insert into test values(1008, 100, 35, 85);
insert into test values(1009, 60, 100, 95);

SELECT AVG(math), MAX(math), MIN(math) FROM test;