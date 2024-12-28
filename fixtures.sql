-- Добавление 20 пользователей
INSERT INTO Пользователи (id, имя, email, дата_регистрации)
VALUES
(1, 'Иван', 'ivan@example.com', '2022-01-01'),
(2, 'Мария', 'maria@example.com', '2022-01-02'),
(3, 'Петр', 'petr@example.com', '2022-01-03'),
(4, 'Елена', 'elena@example.com', '2022-01-04'),
(5, 'Алексей', 'alexey@example.com', '2022-01-05'),
(6, 'Наталья', 'natalya@example.com', '2022-01-06'),
(7, 'Дмитрий', 'dmitry@example.com', '2022-01-07'),
(8, 'Ольга', 'olga@example.com', '2022-01-08'),
(9, 'Сергей', 'sergey@example.com', '2022-01-09'),
(10, 'Анна', 'anna@example.com', '2022-01-10'),
(11, 'Александра', 'alexandra@example.com', '2022-01-11'),
(12, 'Кирилл', 'kirill@example.com', '2022-01-12'),
(13, 'Екатерина', 'ekaterina@example.com', '2022-01-13'),
(14, 'Андрей', 'andrey@example.com', '2022-01-14'),
(15, 'Юлия', 'yulia@example.com', '2022-01-15'),
(16, 'Ирина', 'irina@example.com', '2022-01-16'),
(17, 'Максим', 'maxim@example.com', '2022-01-17'),
(18, 'Татьяна', 'tatiana@example.com', '2022-01-18'),
(19, 'Денис', 'denis@example.com', '2022-01-19'),
(20, 'Олег', 'oleg@example.com', '2022-01-20');


--Добавление 10 продавцов
INSERT INTO Продавцы (идентификатор, название_компании, описание, дата_регистрации)
VALUES 
(1, 'ООО Продуктовый дом', 'Мы предлагаем свежие продукты', '2021-10-01'),
(2, 'ИП Мебельный мир', 'Продаем качественную мебель', '2021-10-02'),
(3, 'Магазин Электроники', 'Широкий ассортимент техники', '2021-10-03'),
(4, 'Книжный магазин "Книговед"', 'Книги на любой вкус', '2021-10-04'),
(5, 'Магазин цветов "Цветочный рай"', 'Букеты и растения', '2021-10-05'),
(6, 'Мясная лавка "Колбасный рай"', 'Натуральные продукты', '2021-10-06'),
(7, 'ООО СпортТовары', 'Спортивные товары и экипировка', '2021-10-07'),
(8, 'ИП Домашний уют', 'Товары для дома и текстиль', '2021-10-08'),
(9, 'Магазин детских игрушек "Детский мир"', 'Игрушки для детей разных возрастов', '2021-10-09'),
(10, 'ООО Косметический мир', 'Косметика для ухода за собой', '2021-10-10');


--Добавление 20 товаров
INSERT INTO Товары (идентификатор, название, описание, цена, идентификатор_продавца)
VALUES
(1, 'Ноутбук HP', 'Мощный ноутбук для работы и игр', 1500.00, 1),
(2, 'Смартфон Samsung', 'Современный смартфон с отличной камерой', 800.00, 2),
(3, 'Наушники Sony', 'Качественные беспроводные наушники', 100.00, 3),
(4, 'Фитнес браслет Fitbit', 'Отслеживайте свою активность и здоровье', 50.00, 1),
(5, 'Кофеварка Philips', 'Автоматическая кофеварка для вашего утра', 80.00, 2),
(6, 'Монитор LG', 'Широкоформатный монитор для работы', 300.00, 3),
(7, 'Клавиатура Logitech', 'Игровая клавиатура с подсветкой', 70.00, 1),
(8, 'Мышь Microsoft', 'Лазерная мышь высокой чувствительности', 40.00, 2),
(9, 'Роутер TP-Link', 'Мощный роутер для быстрого интернета', 60.00, 3),
(10, 'Фотоаппарат Canon', 'Зеркальный фотоаппарат для профессионалов', 1200.00, 1),
(11, 'Принтер Epson', 'Цветной струйный принтер для дома', 100.00, 2),
(12, 'Жесткий диск Seagate', 'Внешний жесткий диск на 1 ТБ', 50.00, 3),
(13, 'Игровая консоль PlayStation', 'Современная консоль для геймеров', 400.00, 1),
(14, 'Камера GoPro', 'Экшн-камера для активного отдыха', 250.00, 2),
(15, 'Умные часы Apple', 'Стильные умные часы от Apple', 300.00, 3),
(16, 'Дрон DJI', 'Профессиональный дрон с камерой', 1000.00, 1),
(17, 'Беспроводная колонка JBL', 'Качественная беспроводная акустика', 80.00, 2),
(18, 'Внешний аккумулятор Xiaomi', 'Емкий внешний аккумулятор на 20000 мАч', 30.00, 3),
(19, 'Телевизор Samsung', '4K телевизор с яркими цветами', 900.00, 1),
(20, 'Смарт-часы Samsung', 'Умные часы с функцией здоровья', 200.00, 2);



-- Вставка заказов
INSERT INTO Заказы (идентификатор_пользователя, дата_заказа, общая_сумма) VALUES
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

-- Вставка элементов заказов
INSERT INTO Элементы_заказа (идентификатор_заказа, идентификатор_товара, количество, цена) VALUES
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
