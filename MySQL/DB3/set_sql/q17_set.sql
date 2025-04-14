CREATE TABLE FOOD(
  food_id	INT 			NOT NULL PRIMARY KEY,
  food_type	VARCHAR(30)		NOT NULL,
  food_name	VARCHAR(100)	NOT NULL,
  price		INT
);

INSERT INTO FOOD VALUES
(1, 'Appetizer', 'Salad', 5000),
(2, 'Appetizer', 'Soup', 3500),
(3, 'Main', 'Pasta', 8000),
(4, 'Main', 'Steak', 11000),
(5, 'Main', 'rice', 7000),
(6, 'Dessert', 'Ice-cream', 10000),
(7, 'Dessert', 'Cookie', 5000),
(8, 'Dessert', 'Coffee', 8000);
