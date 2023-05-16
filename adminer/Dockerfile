FROM alpine:latest

# Installer Apache
RUN apk add --no-cache apache2

# On set la propriété ServerName sinon le build génerera une erreur
RUN echo "ServerName localhost" >> /etc/apache2/httpd.conf

# On remplace le fichier servi par le serveur par index.php car par défaut il sert le .html
RUN sed -i 's/DirectoryIndex index.html/DirectoryIndex index.php/g' /etc/apache2/httpd.conf

# Installer PHP et les extensions nécessaires
RUN apk update && apk add --no-cache php8 \
    php8-apache2 \
    php8-bcmath \
    php8-ctype \
    php8-curl \
    php8-dom \
    php8-fileinfo \
    php8-gd \
    php8-iconv \
    php8-intl \
    php8-json \
    php8-mbstring \
    php8-mysqli \
    php8-opcache \
    php8-openssl \
    php8-pdo \
    php8-pdo_pgsql \
    php8-pgsql \
    php8-pdo_mysql \
    php8-phar \
    php8-posix \
    php8-session \
    php8-simplexml \
    php8-soap \
    php8-tokenizer \
    php8-xml \
    php8-xmlreader \
    php8-xmlwriter \
    php8-zip \
    php8-zlib 

# On set un workdir sur le même path que le DocumentRoot de Apache2
WORKDIR /var/www/localhost/htdocs

# Télécharger Adminer
RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php && \
    mv adminer-4.8.1.php index.php

# Exposer le port 80
EXPOSE 8080

CMD ["php", "-S", "[::]:8080", "-t", "/var/www/localhost/htdocs"]
