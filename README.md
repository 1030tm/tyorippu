# テーブル設計

## users テーブル

| Column             | Type   | Option                    |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| nickname           | string | null: false               |
| text               | text   |                           |
| image              | text   |                           |

### Association

- has_many :pages
- has_many :likes

## pages テーブル

| Column             | Type       | Option                         |
| ------------------ | ---------- | ------------------------------ |
| spot_name          | string     | null: false                    |
| spot_address       | string     | null: false                    |
| spot_tel           | string     | null: false                    |
| spot_parking       | integer    | null: false                    | type: radio
| spot_comment       | text       |                                |
| spot_url_sns       | text       |                                |
| spot_icon          | text       | null: false                    | multiple: true
| spot_images        | text       | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :like

<!-- spotsの一覧ページ的にしたらいいのか？それとも、ページに何個も追加できるのか？ -->
<!-- iconはチェックリストでアイコン表示にしたい -->
<!-- url/snsはハイパーリンクにしたい -->
<!-- parkingはラジオボタン -->

## likes テーブル

| Column             | Type       | Option                         |
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| page               | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :like