#!/usr/bin/bash
#
set -euo pipefail

# 1. MySQLを初期化
# /var/lib/mysql/mysql (システムデータベース) が存在しない場合のみ初期化を実行
    if [ ! -d /var/lib/mysql/mysql ]; 
      then sudo /usr/sbin/mysqld --initialize-insecure --user=mysql --datadir=/var/lib/mysql;
    fi
# 2. MySQLをバックグラウンドで起動
    sudo /usr/sbin/mysqld --user=mysql --daemonize --datadir='/var/lib/mysql'
    
# 3. MySQLが完全に立ち上がるまで待機（sleep 5より確実な方法）
    until [ -S /var/lib/mysql/mysql.sock ]; do sleep 1; done

# 4. PHP-FPMの実行ディレクトリ作成と起動
    sudo mkdir -p /run/php-fpm
    sudo /usr/sbin/php-fpm -D

# 5. Apacheをフォアグラウンドで起動
    sudo /usr/sbin/httpd
