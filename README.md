# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association
- has_many :room_users
- has_many :rooms, through: room_users
- has_many :massages

## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name  | string | null: false |

### Association
- has_many :room_users
- has_many :users, through: room_users
- has_many :massages

## room_users テーブル

| Column  | Type    | Options                        |
| ------- | ------- | ------------------------------ |
| user_id | integer | null: false, foreign_key: true |
| room_id | integer | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## messages テーブル

| Column  | Type    | Options                        |
| ------- |  ------- | ------------------------------ |
| text    | string  |
| user_id | integer | null: false, foreign_key: true |
| room_id | integer | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user