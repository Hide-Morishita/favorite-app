# データベース

## Users テーブル

| Column                               | Type   |Options                    |
|--------------------------------------|--------|---------------------------|
| email                                | string | null: false, unique: true |
| encrypted_password                   | string | null: false               |

## Association
- has_many :posts
- has_many :favorites

## Posts テーブル

| Column            | Type       | Options                                    |
|-------------------|------------|--------------------------------------------|
| title             | string     | null: false                                |
| user              | references | null: false, foreign_key: true             |

## Association
- belongs_to :user
- has_many   :favorites

## Favorites テーブル

| Column            | Type       | Options                                    |
|-------------------|------------|--------------------------------------------|
| user              | references | null: false, foreign_key: true             |
| post              | references | null: false, foreign_key: true             |

## Association
- belongs_to :user
- belongs_to :post


