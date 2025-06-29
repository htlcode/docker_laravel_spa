# Dockerの開発環境 

- Nginx
- Mysql
- PHP
- Redis
- Laravel
- SPA Javascript framework　（Vue.js, Reactなど)


## 構成

- **docker/**: Docker関連の設定ファイルやサービスフォルダが含まれるメインディレクトリです。
  - **db/**: データベースのデータファイル（永久保存）が含まれます。
  - **mysql/**: MySQLの設定ファイルが含まれます。
  - **nginx/**: Nginxの設定やスクリプトが含まれます。
  - **php-fpm/**: PHPの設定やスクリプトが含まれます。
- **docker-compose.yml**: メインのDocker Composeファイルです。

## セットアップ方法

1. リポジトリをクローンします:
   ```bash
   git clone git@github.com:htlcode/docker_laravel_spa.git
   cd docker_laravel_spa
   ```

2. 環境を起動します:
   ```bash
   docker-compose up -d
   ```
