# Dockerの開発環境のテンプレート

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
- **src**: 自分のソースフォルダ (作成する必要あります)
  - **backend**
  - **frontend**

## セットアップ方法

1. マルチプロジェクトを管理するために、事前にReverse Proxyのjwilder/nginx-proxyのdockerイメージをインストールしましょう。

2. Gas Maskをインストールして好みのローカルドメインを設定 (例: gmo.local, wordpress.localなど)

3. リポジトリをクローンします:
   
   ```bash
   git clone git@github.com:htlcode/docker_laravel_spa.git
   cd docker_laravel_spa
   ```
5. ソースフォルダを作成:

リポジトリは以下、srcフォルダを作成して、プロジェクトのアーキテクチャによって、バックエンドフォルダとフロントエンドフォルダを作成してくだい。

5. ソースフォルダを作成:

docker-compose.ymlの下記の変数を修正：
Gas Maskで設定したlocalドメインと書き換えしましょう。

   ```bash
    - VIRTUAL_HOST=domain1.com,domain2.com　# Gas Maskの全てのドメイン
    - NGINX_BACK_DOMAIN=domain1.com # バックエンドのドメイン (例 API)
    - NGINX_BACK_FOLDER=domain1 # バックエンドのフォルダ
    - NGINX_FRONT_DOMAIN=domain2.com # フロントエンドのドメイン
    - NGINX_FRONT_PORT=5173 # フロントエンドのサーバーのポート (例: npm run devで起動した場合、 reverse-proxyをしてフロントのドメインからアクセス)
   ```

6. 環境を起動します:

   ```bash
   docker-compose up -d
   ```
   
