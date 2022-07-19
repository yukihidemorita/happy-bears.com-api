# 事前準備
## 1. Docker for mac / windows を入手する

⚠ M1 と Intel でインストールするアプリケーションが違うので注意

入手先 -> https://docs.docker.com/get-docker/

[Macの場合](https://docs.docker.com/desktop/install/mac-install/)

[Windowsの場合](https://docs.docker.com/desktop/install/windows-install/)

## 2. ソースコードをcloneする

cloneして、ディレクトリを移動する
```shell
$ git clone https://github.com/bears-app/happy-bears.com-api.git
$ cd happy-bears.com-api
```

# Docker環境構築

Docker for Mac / Windowsを入手  
Docker を起動しておく  
⚠ Dockerを起動してないと失敗します  

[Dockerコンテナの作成、起動〜停止まで](https://qiita.com/kooohei/items/0e788a2ce8c30f9dba53)

```shell
$ docker-compose build
$ docker-compose up
```

# Dockerコンテナに入る

```
$ docker-compose run web /bin/bash
```

# DB作成(初回のみ)

開発環境のDBを作成します
このアプリではmigrationを管理してないため、schemaファイルから直接DBを作成します

```shell
$ rails db:create
$ rails db:schema:load
```

# DockerのDB環境構築(stagingから新規でDBを作る場合)

⚠こちらの手順はスキップ可能です

参考: https://www.tohoho-web.com/ex/mysql-mysqldump.html

全体の流れ
1. 既存DBに接続してdumpファイルを作成する
   1. mysqldump -h .接続先ホスト -u ユーザー名 -p --no-data DB名 > schema.sql
   2. mysqldump -h stagingdb-20220716.csbfim75izhr.ap-northeast-1.rds.amazonaws.com -u base2 -p --no-data base2 > schema.sql
2. 1をローカルに保存する
3. ローカルDBに2を適用する

## ローカルPCよりDockerコンテナ内にsqlをコピー

コピーコマンド
docker cp <コンテナID>:/etc/my.cnf my.cnf

$ docker cp ./db/schema.sql my_api_server_db_1:/tmp/backup.sql

## mysqlのコンテナに入る
$ docker exec -it db bash

## dbに適用する
$ mysql -u root -p my_api_server_development < ./tmp/backup.sql

# 開発手順

## jbuilderの使い方
https://pikawaka.com/rails/jbuilder

## APIを作る
1. コントローラーを作成
```
$ bundle exec rails g controller api/v1/posts
```

2. モデルを作成(migrationは作成しない)
```
$ bundle exec rails g model posts --skip-migration
```

3. jbuilderを作成
```
$ bundle exec rails g jbuilder api/v1/posts
```

4. 必要があればseedファイルを作成する
実行するseedデータの順番を制御するため、ファイル名の先頭に番号を振ることに注意
参考: https://techtechmedia.com/seed_fu-rails/
```
$ touch db/fixtures/development/01_user.rb
```

5. routes にルーティングを追記する

6. 動作するように処理を記述する 

7. rspec を書く

# 認証(AWS Cognito)
サンプル：https://github.com/mheffner/rails-cognito-example

