# Docker環境構築

# DockerのDB環境構築
全体の流れ
1. 既存DBに接続してdumpファイルを作成する
   1. mysqldump -h .接続先ホスト -u ユーザー名 -p --no-data DB名 > schema.sql
   2. mysqldump -h stagingdb-20220716.csbfim75izhr.ap-northeast-1.rds.amazonaws.com -u base2 -p --no-data base2 > schema.sql
2. 1をローカルに保存する

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

