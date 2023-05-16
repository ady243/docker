FROM alpine:latest

# Installation des dépendances
RUN apk add --update --no-cache \
    ca-certificates \
    wget \
    unzip \
    php8 \
    php8-phar \
    php8-json \
    php8-iconv \
    php8-dom \
    php8-ctype \
    php8-session \
    php8-mbstring \
    php8-xml \
    php8-tokenizer \
    php8-pdo \
    php8-pdo_mysql \
    php8-simplexml \
    php8-fileinfo \
    php8-xmlwriter \
    php8-pecl-apcu \
    php8-opcache

# Installation de Symfony CLI
RUN wget https://get.symfony.com/cli/installer -O - | php -- \
    --install-dir=/usr/local/bin \
    --filename=symfony \
    && chmod +x /usr/local/bin/symfony

# Copie du script d'entrée
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

# Définition du script d'entrée comme point d'entrée
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
