# データベース

## Users テーブル

| Column                               | Type   |Options                    |
|--------------------------------------|--------|---------------------------|
| nick_name                            | string | null: false               |
| email                                | string | null: false, unique: true |
| encrypted_password                   | string | null: false               |

## Association
- has_many :posts
- has_many :favorites

## Posts テーブル

| Column            | Type       | Options                                    |
|-------------------|------------|--------------------------------------------|
| title             | string     | null: false                                |
| text              | text       | null: false                                |
| user              | references | foreign_key: true                          |

## Association
- belongs_to :user
- has_many   :favorites

## Favorites テーブル

| Column            | Type       | Options                                    |
|-------------------|------------|--------------------------------------------|
| user              | references | foreign_key: true                          |
| post              | references | foreign_key: true                          |

## Association
- belongs_to :user
- belongs_to :post


