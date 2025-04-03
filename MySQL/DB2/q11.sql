-- 아래에 미션을 수행하는 쿼리를 작성해 보세요.

create table if not exists product(
    id int not null,
    name varchar(32) not null,
    stock int,
    expiration_date date,
    list_price int,
    selling_price int,
    primary key(id)
);

insert into product values(1, 'carrot', 100, '2019-04-10', 1000, 900);
insert into product values(2, 'tea', 1000, '2020-02-10', 1000, 900);
insert into product values(3, 'clock', 100, null, 200000, 180000);
insert into product values(4, 'trump card', 100, null, 10000, 9000);
insert into product values(5, 'onion', 100, '2019-04-11', 2000, 1800);


--product테이블에서 물건들이 몇 종류 있는지 조회해 보세요.

SELECT count(name) FROM product;

--product테이블에서 모든 물건들의 재고를 다 더해서 조회해 보세요.

SELECT SUM(stock) FROM product;

--product테이블에서 판매가가 가장 비싼 물건의 판매가를 조회해 보세요.
SELECT MAX(selling_price) FROM product;
