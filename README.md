## users テーブル

| Column    | Type   | Options     |
| --------- | ------ | ----------- |
| password  | string | null: false |
| email     | string | null: false |
| name      | string | null: false |
| profile   | text   | null: false |
| occupation| text   | null: false |
| position  | text   | null: false |


### Association

- has_many :prototypes
- has_many :comments

## prototypes テーブル
| Column    | Type      | Options     |
| --------- | --------- | ----------- |
| title     | string    | null: false |
| catch_copy| text      | null: false |
| concept   | text      | null: false |
| user      | references|             |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| text      | string     | null: false, foreign_key: true |
| user      | references |              foreign_key: true |
| prototypes| references |              foreign_key: true |

### Association

- belongs_to :user
- belongs_to :prototype