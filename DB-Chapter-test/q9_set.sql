
--쿼리

ALTER TABLE students ADD COLUMN test_average FLOAT;

UPDATE students
SET test_average = 
(SELECT AVG(kor+eng+math) FROM test t WHERE t.id = students.id);

SELECT id, name, test_average FROM students;





--table
create table if not exists students(
    id int not null,
    name varchar(16) not null,
    primary key (id)
);

insert into students values(1001, 'Olivia');
insert into students values(1002, 'Noah');
insert into students values(1003, 'Emma');
insert into students values(1004, 'Liam');
insert into students values(1005, 'Ava');
insert into students values(1006, 'Mia');
insert into students values(1007, 'Mason');
insert into students values(1008, 'James');
insert into students values(1009, 'Camila');

create table if not exists test(
    id int not null,
    kor int not null,
    eng int not null,
    math int not null,
    primary key (id),
    foreign key (id) references students(id) 
);

insert into test values(1001, 60, 45, 25);
insert into test values(1002, 100, 80, 50);
insert into test values(1003, 55, 45, 85);
insert into test values(1004, 35, 35, 60);
insert into test values(1005, 45, 65, 50);
insert into test values(1006, 80, 70, 70);
insert into test values(1007, 55, 85, 75);
insert into test values(1008, 100, 35, 85);
insert into test values(1009, 60, 100, 95);