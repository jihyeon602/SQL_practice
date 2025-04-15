

SELECT m.card_company_id, m.company_name, m.fee, 
SUM(d.pay_price * (m.fee / 100)) AS calculation
FROM orders_detail d JOIN orders o ON d.orders = o.order_number
JOIN card_company_manager m ON o.card_company = m.card_company_id
WHERE o.order_status = '3001'
GROUP BY m.card_company_id, m.company_name, m.fee
ORDER BY m.card_company_id;


-- card_company_manager
CREATE TABLE card_company_manager (
  card_company_id INT NOT NULL,
  company_name VARCHAR(50) NULL,
  fee DECIMAL(7,4) NULL,
  from_date DATETIME NULL,
  to_date DATETIME NULL,
  PRIMARY KEY (card_company_id)
)
;
INSERT INTO card_company_manager VALUES(1, '삼성카드', 1.32, '2022-08-29 00:00:00', '2080-09-14 00:00:00');
INSERT INTO card_company_manager VALUES(2, '현대카드', 1.32, '2022-08-29 00:00:00', '2080-09-14 00:00:00');
INSERT INTO card_company_manager VALUES(3, '신한카드', 3.32, '2022-08-29 00:00:00', '2080-09-14 00:00:00');
INSERT INTO card_company_manager VALUES(4, '롯데카드', 3.35, '2022-08-29 00:00:00', '2080-09-14 00:00:00');


-- orders
CREATE TABLE orders (
  order_number VARCHAR(13) NOT NULL,
  order_status VARCHAR(4) NULL,
  order_date DATETIME NULL,
  cancel_date DATETIME NULL,
  customer INT NULL,
  delivery_rider INT NULL,
  card_company INT NULL,
  PRIMARY KEY (order_number)
)
;
INSERT INTO orders values('20220901A0001', '3001', '2022-08-29 16:10:57', null, 11, 1, 1);
INSERT INTO orders values('20220904A0001', '3001', '2022-09-04 17:57:23', null, 2, 2, 1);
INSERT INTO orders values('20220904A0002', '3001', '2022-09-04 18:10:57', null, 11, 3, 2);
INSERT INTO orders values('20220907A0001', '3001', '2022-09-07 19:07:22', null, 1, 4, 3);
INSERT INTO orders values('20220907A0002', '3001', '2022-09-07 20:11:21', null, 2, 2, 2);
INSERT INTO orders values('20220908A0001', '3001', '2022-09-08 12:05:54', null, 11, 1, 2);
INSERT INTO orders values('20220917A0001', '3001', '2022-09-17 11:10:41', null, 4, 3, 1);
INSERT INTO orders values('20220917A0002', '3001', '2022-09-17 15:07:56', null, 2, 4, 1);
INSERT INTO orders values('20220917A0003', '3001', '2022-09-17 22:39:23', null, 3, 5, 2);
INSERT INTO orders values('20220920A0001', '3001', '2022-09-20 19:10:56', null, 5, 6, 2);

INSERT INTO orders values('20220920A0002', '3001', '2022-09-20 19:27:41', null, 1, 1, 1);
INSERT INTO orders values('20220920A0003', '3001', '2022-09-20 19:34:47', null, 2, 2, 1);
INSERT INTO orders values('20220921A0001', '3001', '2022-09-21 20:00:21', null, 11, 3, 2);
INSERT INTO orders values('20220922A0002', '3001', '2022-09-22 15:50:15', null, 8, 4, 3);
INSERT INTO orders values('20220922A0003', '3001', '2022-09-22 16:55:47', null, 1, 5, 4);
INSERT INTO orders values('20220923A0001', '3001', '2022-09-23 19:13:21', null, 3, 6, 4);
INSERT INTO orders values('20220923A0002', '3001', '2022-09-23 20:00:21', null, 3, 1, 2);
INSERT INTO orders values('20220924A0001', '3001', '2022-09-24 21:48:21', null, 3, 2, 3);
INSERT INTO orders values('20220930A0001', '3001', '2022-09-30 19:19:32', null, 9, 2, 4);
INSERT INTO orders values('20220930A0002', '3001', '2022-09-30 21:17:28', null, 10, 3, 2);

INSERT INTO orders values('20220922A0004', '3002', '2022-09-22 18:49:54', '2022-09-22 19:00:00', 9, 1, 4);
INSERT INTO orders values('20220922A0005', '3002', '2022-09-22 19:16:28', '2022-09-23 09:03:21', 10, 5, 2);
INSERT INTO orders values('20220922A0006', '3001', '2022-09-22 22:37:28', null, 10, 3, 2);
INSERT INTO orders values('20220922A0007', '3003', '2022-09-22 23:00:00', '2022-09-22 23:02:00', 9, null, 4);
INSERT INTO orders values('20220917A0004', '3001', '2022-09-17 22:39:00', null, 2, null, 2);
INSERT INTO orders values('20220905A0001', '3001', '2022-09-05 20:00:00', null, 2, 3, 1);


-- orders_detail
CREATE TABLE orders_detail (
  sequence INT NOT NULL,
  orders VARCHAR(13) NULL,
  product INT NULL,
  order_count INT NULL,
  pay_price INT NULL,
  PRIMARY KEY (sequence)
)
;

INSERT INTO orders_detail values(1, '20220901A0001', 1, 2, 2*3800);
INSERT INTO orders_detail values(2, '20220901A0001', 3, 1, 1*6200);
INSERT INTO orders_detail values(3, '20220901A0001', 4, 1, 1*7800);
INSERT INTO orders_detail values(4, '20220901A0001', 5, 1, 1*10900);

INSERT INTO orders_detail values(5, '20220904A0001', 8, 2, 2*14500);
INSERT INTO orders_detail values(6, '20220904A0001', 15, 1, 1*2000);

INSERT INTO orders_detail values(7, '20220904A0002', 2, 1, 1*1450);
INSERT INTO orders_detail values(8, '20220904A0002', 13, 1, 1*6000);
INSERT INTO orders_detail values(9, '20220904A0002', 15, 1, 1*2000);
INSERT INTO orders_detail values(10, '20220904A0002', 7, 1, 1*7000);

INSERT INTO orders_detail values(11, '20220907A0001', 5, 1, 1*10900);
INSERT INTO orders_detail values(12, '20220907A0001', 8, 2, 2*14500);
INSERT INTO orders_detail values(13, '20220907A0001', 9, 1, 1*12000);

INSERT INTO orders_detail values(14, '20220907A0002', 12, 3, 3*5500);
INSERT INTO orders_detail values(15, '20220907A0002', 13, 3, 3*6000);

INSERT INTO orders_detail values(16, '20220908A0001', 1, 1, 1*3800);
INSERT INTO orders_detail values(17, '20220908A0001', 4, 2, 2*7800);
INSERT INTO orders_detail values(18, '20220908A0001', 5, 2, 2*10900);
INSERT INTO orders_detail values(19, '20220908A0001', 8, 1, 1*14500);
INSERT INTO orders_detail values(20, '20220908A0001', 13, 3, 3*6000);
INSERT INTO orders_detail values(21, '20220908A0001', 14, 3, 3*7000);

INSERT INTO orders_detail values(22, '20220917A0001', 3, 3, 3*6200);

INSERT INTO orders_detail values(23, '20220917A0002', 6, 3, 3*6700);
INSERT INTO orders_detail values(24, '20220917A0002', 7, 2, 2*7000);
INSERT INTO orders_detail values(25, '20220917A0002', 8, 3, 3*14500);

INSERT INTO orders_detail values(26, '20220917A0003', 1, 3, 3*3800);
INSERT INTO orders_detail values(27, '20220917A0003', 5, 2, 2*10900);
INSERT INTO orders_detail values(28, '20220917A0003', 6, 1, 1*6700);
INSERT INTO orders_detail values(29, '20220917A0003', 10, 1, 1*6000);
INSERT INTO orders_detail values(30, '20220917A0003', 8, 1, 1*14500);

INSERT INTO orders_detail values(31, '20220920A0001', 2, 3, 3*1450);
INSERT INTO orders_detail values(32, '20220920A0001', 3, 3, 3*6200);

INSERT INTO orders_detail values(33, '20220920A0002', 5, 2, 2*10900);
INSERT INTO orders_detail values(34, '20220920A0002', 8, 5, 5*14500);
INSERT INTO orders_detail values(35, '20220920A0002', 6, 1, 1*6700);
INSERT INTO orders_detail values(36, '20220920A0002', 10, 1, 1*6000);
INSERT INTO orders_detail values(37, '20220920A0002', 11, 1, 1*5000);

INSERT INTO orders_detail values(38, '20220920A0003', 4, 2, 2*7800);
INSERT INTO orders_detail values(39, '20220920A0003', 13, 2, 2*6000);
INSERT INTO orders_detail values(40, '20220920A0003', 2, 2, 2*1450);

INSERT INTO orders_detail values(41, '20220921A0001', 1, 10, 10*3800);
INSERT INTO orders_detail values(42, '20220921A0001', 2, 5, 5*1450);

INSERT INTO orders_detail values(43, '20220922A0002', 1, 3, 3*3800);
INSERT INTO orders_detail values(44, '20220922A0002', 6, 2, 2*6700);
INSERT INTO orders_detail values(45, '20220922A0002', 8, 1, 1*14500);
INSERT INTO orders_detail values(46, '20220922A0002', 9, 1, 1*12000);
INSERT INTO orders_detail values(47, '20220922A0002', 14, 1, 1*7000);

INSERT INTO orders_detail values(48, '20220922A0003', 3, 3, 3*6200);

INSERT INTO orders_detail values(49, '20220923A0001', 11, 1, 1*5000);
INSERT INTO orders_detail values(50, '20220923A0001', 12, 1, 1*5500);

INSERT INTO orders_detail values(51, '20220923A0002', 4, 1, 1*7800);
INSERT INTO orders_detail values(52, '20220923A0002', 10, 10, 10*6000);

INSERT INTO orders_detail values(53, '20220924A0001', 15, 5, 5*2000);

INSERT INTO orders_detail values(54, '20220930A0001', 5, 5, 5*10900);
INSERT INTO orders_detail values(55, '20220930A0001', 8, 3, 3*14500);

INSERT INTO orders_detail values(56, '20220930A0002', 1, 2, 2*3800);
INSERT INTO orders_detail values(57, '20220930A0002', 6, 5, 5*6700);
INSERT INTO orders_detail values(58, '20220930A0002', 11, 3, 3*5000);

INSERT INTO orders_detail values(59, '20220922A0004', 1, 2, 2*3800);
INSERT INTO orders_detail values(60, '20220922A0004', 2, 2, 2*1450);
INSERT INTO orders_detail values(61, '20220922A0004', 3, 2, 2*6200);

INSERT INTO orders_detail values(62, '20220922A0005', 6, 3, 3*6700);
INSERT INTO orders_detail values(63, '20220922A0005', 7, 3, 3*7000);

INSERT INTO orders_detail values(64, '20220922A0006', 11, 3, 3*5000);
INSERT INTO orders_detail values(65, '20220922A0006', 12, 3, 3*5500);

INSERT INTO orders_detail values(66, '20220922A0007', 12, 3, 3*5500);

INSERT INTO orders_detail values(67, '20220917A0004', 1, 2, 2*3800);
INSERT INTO orders_detail values(68, '20220905A0001', 1, 2, 2*3800);