# 📝 GroupChat-App

- Ruby　2.5.1
  - Ruby on Rails　5.0.7.2
- HAML
- SCSS
  - BEM
- JavaScript
  - jQuery
- Font Awesome5
- MySQL2
- AWS
  - Amazon S3
  - Nginx
  - Unicorn
  - CarrierWave
  - capistrano

# 📘Usage

```
$ git clone
$ cd GroupChat-App
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails s
👉http://localhost:3000/
```

# 📦 Features

## ・Asynchronous communication

## ・Automatic updating

## ・Incremental search

DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|index: true, null: false, unique: true|
|mail|string|null: false|

### Association
- has_many :groups, through: groups_users
- has_many :messages
- has_many :groups＿users

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|

### Association
- has_many :users, through: :group_users
- has_many :group_users
- has_many :messages

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text||
|image|string||
|group_id|interger|index: true, null: false, foreign_key: true|
|user_id|interger|index: true, null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
