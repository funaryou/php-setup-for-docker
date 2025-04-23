FROM php:8.2-apache

# Apacheのrewriteモジュールを有効にする（Laravelなどを使うなら）
RUN a2enmod rewrite

# PHP拡張をインストール
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Composerをインストール（必要に応じて）
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# 作業ディレクトリ
WORKDIR /var/www/html
