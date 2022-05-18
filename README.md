# README

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

## types テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| gorgeous               | string | null: false |
| simple              | string | null: false |
| encrypted_password | string | null: false |