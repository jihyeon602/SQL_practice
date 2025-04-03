-- 아래에 미션을 수행하는 코드를 작성해 봅시다.

create table if not exists student(
    name varchar(32) not null,
    height int not null,
    weight int not null,
    gender varchar(1) not null
);

insert into student values('Adam', 183, 93, 'M');
insert into student values('Bonnie', 167, 46, 'F');
insert into student values('Charlotte', 158, 62, 'F');
insert into student values('David', 179, 74, 'M');
insert into student values('Edward', 175, 63, 'M');
insert into student values('Flora', 176, 49, 'F');


--모든 학생의 이름을 조회해보세요.
--성별이 남자인 학생들의 모든 정보를 조회해보세요.
--키가 170 이하인 학생들의 키만 따로 조회해보세요.
--몸무게가 50 이상인 학생들의 몸무게만 따로 조회해보세요.

SELECT name FROM student;

SELECT * FROM student WHERE gender = 'M';

SELECT height FROM student WHERE height <= 170;

SELECT weight FROM student WHERE weight >= 50;