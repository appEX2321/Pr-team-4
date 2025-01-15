--Заполним тестовыми данными таблицу «Пользователи»:
INSERT INTO Users (id, name, email, registration_date)
VALUES
(1, 'Ivan', 'ivan@example.com', '2022-01-01'),
(2, 'Maria', 'maria@example.com', '2022-01-02'),
(3, 'Petr', 'petr@example.com', '2022-01-03'),
(4, 'Elena', 'elena@example.com', '2022-01-04'),
(5, 'Alexey', 'alexey@example.com', '2022-01-05'),
(6, 'Natalya', 'natalya@example.com', '2022-01-06'),
(7, 'Dmitry', 'dmitry@example.com', '2022-01-07'),
(8, 'Olga', 'olga@example.com', '2022-01-08'),
(9, 'Sergey', 'sergey@example.com', '2022-01-09'),
(10, 'Anna', 'anna@example.com', '2022-01-10'),
(11, 'Alexandra', 'alexandra@example.com', '2022-01-11'),
(12, 'Kirill', 'kirill@example.com', '2022-01-12'),
(13, 'Ekaterina', 'ekaterina@example.com', '2022-01-13'),
(14, 'Andrey', 'andrey@example.com', '2022-01-14'),
(15, 'Yulia', 'yulia@example.com', '2022-01-15'),
(16, 'Irina', 'irina@example.com', '2022-01-16'),
(17, 'Maxim', 'maxim@example.com', '2022-01-17'),
(18, 'Tatiana', 'tatiana@example.com', '2022-01-18'),
(19, 'Denis', 'denis@example.com', '2022-01-19'),
(20, 'Oleg', 'oleg@example.com', '2022-01-20');

--Заполним тестовыми данными таблицу «Продавцы»:
INSERT INTO Sellers (id, company_name, description, registration_date)
VALUES 
(1, 'Food House LLC', 'We offer fresh products', '2021-10-01'),
(2, 'IP Furniture World', 'Selling high-quality furniture', '2021-10-02'),
(3, 'Electronics Store', 'Wide range of electronics', '2021-10-03'),
(4, 'Bookstore "Knigoved"', 'Books for every taste', '2021-10-04'),
(5, 'Flower Shop "Flower Paradise"', 'Bouquets and plants', '2021-10-05'),
(6, 'Meat Shop "Sausage Paradise"', 'Natural products', '2021-10-06'),
(7, 'LLC SportGoods', 'Sports goods and equipment', '2021-10-07'),
(8, 'IP Homely Comfort', 'Home goods and textiles', '2021-10-08'),
(9, 'Children's Toy Store "Detskiy Mir"', 'Toys for children of all ages', '2021-10-09'),
(10, 'LLC Cosmetic World', 'Cosmetics for personal care', '2021-10-10');

--Заполним тестовыми данными таблицу «Товары»:
INSERT INTO Products (id, name, description, price, seller_id)
VALUES
(1, 'HP Laptop', 'Powerful laptop for work and games', 1500.00, 1),
(2, 'Samsung Smartphone', 'Modern smartphone with an excellent camera', 800.00, 2),
(3, 'Sony Headphones', 'High-quality wireless headphones', 100.00, 3),
(4, 'Fitbit Fitness Tracker', 'Track your activity and health', 50.00, 1),
(5, 'Philips Coffee Maker', 'Automatic coffee maker for your morning', 80.00, 2),
(6, 'LG Monitor', 'Widescreen monitor for work', 300.00, 3),
(7, 'Logitech Keyboard', 'Gaming keyboard with backlight', 70.00, 1),
(8, 'Microsoft Mouse', 'Laser mouse with high sensitivity', 40.00, 2),
(9, 'TP-Link Router', 'Powerful router for fast internet', 60.00, 3),
(10, 'Canon Camera', 'DSLR camera for professionals', 1200.00, 1),
(11, 'Epson Printer', 'Color inkjet printer for home', 100.00, 2),
(12, 'Seagate Hard Drive', 'External hard drive with 1 TB', 50.00, 3),
(13, 'PlayStation Gaming Console', 'Modern console for gamers', 400.00, 1),
(14, 'GoPro Camera', 'Action camera for active leisure', 250.00, 2),
(15, 'Apple Smart Watch', 'Stylish smartwatch from Apple', 300.00, 3),
(16, 'DJI Drone', 'Professional drone with a camera', 1000.00, 1),
(17, 'JBL Wireless Speaker', 'High-quality wireless audio', 80.00, 2),
(18, 'Xiaomi Power Bank', 'Powerful 20000mAh power bank', 30.00, 3),
(19, 'Samsung TV', '4K TV with vibrant colors', 900.00, 1),
(20, 'Samsung Smart Watch', 'Smartwatch with health features', 200.00, 2);

--Заполним тестовыми данными таблицу «Заказы»:
INSERT INTO Orders (user_id, order_date, total_amount) VALUES
(1, '2022-01-01', 150.00),
(2, '2022-01-02', 200.00),
(3, '2022-01-03', 100.00),
(1, '2022-01-04', 75.00),
(2, '2022-01-05', 300.00),
(3, '2022-01-06', 180.00),
(1, '2022-01-07', 250.00),
(2, '2022-01-08', 120.00),
(3, '2022-01-09', 90.00),
(1, '2022-01-10', 210.00),
(2, '2022-01-11', 175.00),
(3, '2022-01-12', 320.00),
(1, '2022-01-13', 140.00),
(2, '2022-01-14', 260.00),
(3, '2022-01-15', 190.00);


--Заполним тестовыми данными таблицу «Элементы заказов»:

INSERT INTO Order_Items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 50.00),
(1, 2, 2, 100.00),
(2, 3, 1, 200.00),
(3, 4, 1, 75.00),
(4, 2, 3, 90.00),
(5, 5, 2, 150.00),
(6, 3, 1, 180.00),
(7, 6, 1, 250.00),
(8, 4, 2, 60.00),
(9, 2, 1, 90.00),
(10, 7, 1, 210.00),
(11, 5, 2, 75.00),
(12, 8, 4, 80.00),
(13, 1, 1, 140.00),
(14, 9, 3, 80.00),
(15, 7, 1, 190.00);