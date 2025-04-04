-- 지시사항을 만족하는 쿼리를 작성해보세요.
create table if not exists sale(
    id int not null,
    name varchar(16) not null,
    amount int,
    revenue int,
    primary key(id)
);

insert into sale values(1, 'tea', 10, 9000);
insert into sale values(2, 'tea', 5, 4500);
insert into sale values(3, 'card', 1, 10000);
insert into sale values(4, 'clock', 1, 180000);
insert into sale values(5, 'carrot', 100, 90000);
insert into sale values(6, 'onion', 20, 36000);
insert into sale values(7, 'carrot', 10, 9000);
insert into sale values(8, 'tea', 1, 900);
insert into sale values(9, 'onion', 10, 18000);
insert into sale values(10, 'clock', 1, 180000);
insert into sale values(11, 'umbrella', 5, 50000);

--주식회사 엘리스에는 여러 물건들을 팔고 있습니다.
--sale 테이블에 물건이 판매될 때마다 판매된 양과 수익이 기록되어 있습니다.
--물건 생산량을 조절하기 위해 어떤 물건이 가장 인기 있는지 확인해봅시다.

--지시사항
--물건의 이름(name)과 물건 별 판매량(amount)의 합을 검색하세요. 
--단 해당 물건의 총 판매 수익(revenue)의 합이 50000이상인 것만 검색해봅시다.

SELECT name, SUM(amount) FROM sale GROUP BY name;