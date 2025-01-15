# Используем официальный образ MySQL
FROM mysql:latest

# Копируем файлы схемы и данных в контейнер
COPY schema.sql /docker-entrypoint-initdb.d/
COPY fixtures.sql /docker-entrypoint-initdb.d/

# Устанавливаем переменную окружения для пароля пользователя root
ENV MYSQL_ROOT_PASSWORD=mypassword1

