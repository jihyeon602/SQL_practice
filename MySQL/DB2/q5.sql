-- 아래에 미션을 수행하는 코드를 작성해 봅시다.
create table if not exists shareholder(
    name varchar(32) not null,
    stock int not null,
    agree tinyint(1) not null
);

insert into shareholder values("Alexis", 78000, 0);
insert into shareholder values("Brian", 145000, 1);
insert into shareholder values("Craig", 126000, 0);
insert into shareholder values("Dave", 95000, 1);
insert into shareholder values("Elice", 235000, 0);
insert into shareholder values("Fred", 67000, 1);
insert into shareholder values("Grace", 50000, 1);
insert into shareholder values("Helena", 100000, 1);
insert into shareholder values("Irene", 45000, 0);
insert into shareholder values("Jane", 80000, 1);
insert into shareholder values("Kevin", 105000, 0);

--모든 주주의 정보를 출력하세요.
--10만 주 이상 가지고 있는 주주들의 정보를 출력하세요.
--Alexis, Craig, Fred가 가진 주식 수를 출력하세요.
--엘리스에게 찬성하면서 10만 주 이상 보유 중인 주주들의 이름과 주식 수를 출력하세요.
--엘리스에게 반대하면서 10만 주 이상 보유 중인 주주들의 이름과 주식 수를 출력하세요.
--20만 주 이상 또는 10만 주 이하만큼 보유하고 있는 주주들의 정보를 출력하세요.

SELECT * FROM shareholder;

SELECT * FROM shareholder WHERE stock >= 100000;

SELECT stock FROM shareholder WHERE name = 'Alexis' OR name = 'Craig' OR name = 'Fred';

SELECT name, stock FROM shareholder WHERE agree = 0 AND stock >= 100000;

SELECT name, stock FROM shareholder WHERE agree = 1 && stock >= 100000;

SELECT * FROM shareholder WHERE stock >= 200000 || stock <= 100000;