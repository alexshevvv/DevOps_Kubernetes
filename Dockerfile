# Используем базовый образ с Python 3.9
FROM python:3.9-slim

# Устанавливаем зависимости
RUN pip install flask

# Копируем содержимое локального каталога в контейнер
COPY welcome_app.py /welcome_app.py

# Указываем рабочую директорию
WORKDIR /

# Открываем порт 8080 для нашего сервиса
EXPOSE 8080

# Команда для запуска нашего веб-сервиса
CMD ["python", "welcome_app.py"]
