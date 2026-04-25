#!/usr/bin/bash
#
set -euo pipefail

# 1. PHP-FPMの実行ディレクトリ作成と起動
    sudo mkdir -p /run/php-fpm
    sudo /usr/sbin/php-fpm -D

# 2. Apacheをフォアグラウンドで起動
    sudo /usr/sbin/httpd
