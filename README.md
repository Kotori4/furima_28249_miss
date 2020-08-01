# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



# テーブル設計

## users テーブル

| Column                | Type   | Options     |
| --------------------- | ------ | ----------- |
| nickname              | string | null: false |
| email                 | string | null: false |
| password              | string | null: false |
| last_name_reading     | string | null: false |
| first_name_reading    | string | null: false |

### Association
- has_many :items


## items テーブル

| Column               | Type     | Options     |
| -------------------- | -------- | ----------- |
| item                 | string   | null: false |
| item_detail          | text     | null: false |
| item_category        | integer  | null: false |
| item_condition       | integer  | null: false |
| shipping             | integer  | null: false |
| ship_from_location   | integer  | null: false |
| days_til_ship        | integer  | null: false |
| price                | integer  | null: false |

### Association
belongs_to :user
belongs_to :purchases


## purchases テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| user             | references | null: false, foreign_key: true |
| postal_code      | string     | default: "", null: false       |
| prefecture       | integer    | null: false                    |
| city             | string     | default: "", null: false       |
| address_line     | string     | default: "", null: false       |
| building_unit    | string     |                                |
| phone_number     | string     |default: "", null: false        |

### Association
has_one :items
