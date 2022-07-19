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

4. 必要があればseedを作成する
実行するseedデータの順番を制御するため、ファイル名の先頭に番号を振ることに注意
参考: https://techtechmedia.com/seed_fu-rails/
```
$ touch db/fixtures/development/01_user.rb
```

5. routes にルーティングを追記する

6. 動作するように処理を記述する 

7. rspec を書く

