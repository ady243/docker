FROM alpine:latest

RUN apk --update add wget \ 
    curl \
    git \
    php8 \
    php8-curl \
    php8-openssl \
    php8-iconv \
    php8-json \
    php8-mbstring \
    php8-phar \
    php8-ctype \
    php8-tokenizer \
    php8-xml \
    php8-xmlwriter \
    php8-dom && rm /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer  

WORKDIR /app

CMD ["sh", "-c", "composer install"]