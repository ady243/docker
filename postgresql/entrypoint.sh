#!/bin/sh

# Installation des dépendances du projet
composer install --prefer-dist --no-progress --no-suggest --no-interaction

# Lancement du serveur Symfony
symfony server:start --no-tls --allow-http --port=8000 --dir=/path/to/your/symfony/project
