-- 아래에 문제 설명대로 정보를 추가해 봅시다.

create table if not exists product(
    id int not null,
    name varchar(32) not null,
    stock int,
    expiration_date date,
    list_price int,
    selling_price int,
    primary key(id)
);

INSERT INTO product VALUES
(1, 'carrot', 100, '2019-04-10', 1000, 900),
(2, 'tea', 1000, '2020-02-10', 1000, 900),
(3, 'clok', 100, NULL, 200000, 180000);

-- product테이블 전체를 조회해 봅시다.

SELECT * FROM product;