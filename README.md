# Wonderful Post App

## アプリ概要
ユーザー登録・ログイン後に投稿を作成、編集、削除できるRails製の投稿アプリです。

## 使用技術
- Ruby 3.1.3
- Ruby on Rails 6.1.7
- PostgreSQL
- Devise
- Kaminari
- Docker / Docker Compose

## 主な機能
- ユーザー登録・ログイン機能
- 投稿一覧表示
- 投稿詳細表示
- 投稿作成
- 投稿編集
- 投稿削除
- ページネーション

## 工夫した点
- Deviseを使って認証機能を実装
- Kaminariで投稿一覧のページネーションを実装
- Docker Composeで開発環境を構築

## セットアップ方法
```bash
git clone https://github.com/kouse820/wonderful_post_app.git
cd wonderful_post_app
docker compose build
docker compose up
docker compose exec web rails db:create
docker compose exec web rails db:migrate
