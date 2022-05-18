# README

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

  has_many :like
  has_many :flowers, through: :like


## types テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| gorgeous | string | null: false |
| simple   | string | null: false |
| formal   | string | null: false |
| casual   | string | null: false |

### Association

  has_many :flowers


## flowers テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| name    | string     | null: false                    |
| type_id | references | null: false, foreign_key: true |
| user_id | references | null: false, foreign_key: true |

### Association

  has_many :likes
  has_many :users, through: :likes
  belongs_to :type
  belongs_to :user


## like テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| name      | string     | null: false                    |
| flower_id | references | null: false, foreign_key: true |
| user_id   | references | null: false, foreign_key: true |

### Association

  belongs_to :flower
  belongs_to :user