FROM php:8.3-cli-alpine
WORKDIR /app
COPY index.php ./
EXPOSE 3000
CMD ["sh","-c","php -S 0.0.0.0:${PORT:-3000} -t /app"]
