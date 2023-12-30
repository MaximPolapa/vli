# Використовуємо офіційний образ Java
FROM openjdk:18-jdk-slim

# Копіюємо .jar файл у контейнер
COPY target/myapp.jar /usr/app/

# Встановлюємо робочу директорію
WORKDIR /usr/app

# Відкриваємо порт 8080
EXPOSE 8080

# Команда для запуску Java-додатку
CMD ["java", "-jar", "myapp.jar"]
