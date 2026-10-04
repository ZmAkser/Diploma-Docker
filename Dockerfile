FROM nginx:alpine

# Копируем файлы сайта в директорию, откуда Nginx раздаёт контент по умолчанию
COPY html/ /usr/share/nginx/html/

# Открываем порт, на котором будет доступен сайт
EXPOSE 80

# Команда запуска
CMD ["nginx", "-g", "daemon off;"]