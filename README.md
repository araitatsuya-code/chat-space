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
$ git clone https://github.com/aocattleya/GroupChat-App.git
$ cd GroupChat-App
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails s
👉http://localhost:3000/
```

# 📦 Features

## ・Asynchronous communication

![Ajax](https://user-images.githubusercontent.com/39142850/68860107-2b9ebc00-072c-11ea-9849-08d1b0ad4637.gif)
　
## ・Automatic updating

![auto](https://user-images.githubusercontent.com/39142850/69133731-b9e2bb80-0af9-11ea-92c7-4cae24d9bb2c.gif)
　
## ・Incremental search

![Incremental search](https://user-images.githubusercontent.com/39142850/69483415-880b8500-0e6a-11ea-8ce5-f7770ec3c560.gif)
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
