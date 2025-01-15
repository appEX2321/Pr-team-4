--Создание таблицы «Пользователи»:
CREATE TABLE Users (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    registration_date DATE
);

--Создание таблицы «Продавцы»:
CREATE TABLE Sellers (
    id INT PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    description TEXT,
    registration_date DATE
);

--Создание таблицы «Товары»:
CREATE TABLE Products (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    seller_id INT,
    FOREIGN KEY (seller_id) REFERENCES Sellers(id)
);

--Создание таблицы «Заказы»:
CREATE TABLE Orders (
    id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

--Создание таблицы «Элементы заказа»:
CREATE TABLE Order_Items (
    id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(id),
    FOREIGN KEY (product_id) REFERENCES Products(id)
);


-- Добавление индексов
CREATE INDEX idx_user ON Users(id);
CREATE INDEX idx_seller ON Sellers(id);
CREATE INDEX idx_product ON Products(id);
CREATE INDEX idx_order ON Orders(id);
CREATE INDEX idx_order_item ON Order_Items(id);


-- Дополнительные ограничения
ALTER TABLE Users
ADD CONSTRAINT chk_email_format CHECK (email LIKE '%_@%.%');
