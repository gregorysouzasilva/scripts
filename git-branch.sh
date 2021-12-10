#!/bin/sh
git checkout $1
git pull --no-ff
composer install
php artisan migrate

