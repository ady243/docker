FROM alpine:latest

# Installation de PHP et d'autres dépendances nécessaires
RUN apk add --no-cache php8 php8-cli php8-opcache php8-ctype php8-json php8-mbstring php8-phar php8-xml php8-zip php8-curl php8-intl php8-pdo php8-pdo_mysql php8-tokenizer php8-openssl php8-iconv php8-simplexml php8-dom php8-fileinfo composer

# Installation de Symfony CLI
RUN wget https://get.symfony.com/cli/installer -O - | bash && \
    mv /root/.symfony/bin/symfony /usr/local/bin/symfony

# Copie de notre projet Symfony dans le conteneur
WORKDIR /app
COPY . /app

# Installation des dépendances avec Composer
RUN composer install --no-dev --optimize-autoloader

# Exposition du port 8000 pour accéder à l'application Symfony
EXPOSE 8000

# Commande pour lancer le serveur web Symfony
CMD ["symfony", "server:start", "--port=8000", "--no-tls", "--allow-http"]
