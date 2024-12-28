-- Создание таблиц
CREATE TABLE Пользователи (
    id INT PRIMARY KEY,
    имя VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    дата_регистрации DATE
);

CREATE TABLE Продавцы (
    идентификатор INT PRIMARY KEY,
    название_компании VARCHAR(100) NOT NULL,
    описание TEXT,
    дата_регистрации DATE
);

CREATE TABLE Товары (
    идентификатор INT PRIMARY KEY,
    название VARCHAR(100) NOT NULL,
    описание TEXT,
    цена DECIMAL(10, 2) NOT NULL,
    идентификатор_продавца INT,
    FOREIGN KEY (идентификатор_продавца) REFERENCES Продавцы(идентификатор)
);

CREATE TABLE Заказы (
    идентификатор INT PRIMARY KEY,
    идентификатор_пользователя INT,
    дата_заказа DATE,
    общая_сумма DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (идентификатор_пользователя) REFERENCES Пользователи(id)
);

CREATE TABLE Элементы_заказа (
    идентификатор INT PRIMARY KEY,
    идентификатор_заказа INT,
    идентификатор_товара INT,
    количество INT NOT NULL,
    цена DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (идентификатор_заказа) REFERENCES Заказы(идентификатор),
    FOREIGN KEY (идентификатор_товара) REFERENCES Товары(идентификатор)
);

-- Добавление индексов
CREATE INDEX idx_пользователь ON Пользователи(id);
CREATE INDEX idx_продавец ON Продавцы(идентификатор);
CREATE INDEX idx_товар ON Товары(идентификатор);
CREATE INDEX idx_заказ ON Заказы(идентификатор);
CREATE INDEX idx_элемент_заказа ON Элементы_заказа(идентификатор);

-- Дополнительные ограничения
ALTER TABLE Пользователи
ADD CONSTRAINT chk_email_format CHECK (email LIKE '%_@__%.__%');
