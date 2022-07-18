# Docker環境構築

1. Docker for Mac / Windowsを入手
2. $ docker-compose build
3. $ docker-compose up

# Dockerコンテナに入る

1. docker-compose run web /bin/bash
2. bundle exec rails db:migrate

# DockerのDB環境構築

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
モデル作成
$ bundle exec rails g model model名 --skip-migration

# 認証(AWS Cognito)
サンプル：https://github.com/mheffner/rails-cognito-example

# jbuilderの使い方
https://pikawaka.com/rails/jbuilder

# APIを作る
$ bundle exec rails g controller api/v1/posts
$ bundle exec rails g model posts --skip-migration
$ bundle exec rails g jbuilder api/v1/posts

routes に追記する
動作するように記述する
rspec を書く

