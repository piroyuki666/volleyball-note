# volleyball-note
- このアプリは練習の記録を管理する為のアプリです。
- ユーザー登録する事でメンバー全員で共有できるものです。
- コメント機能により掲示板のように連絡事項を残す事もできます。
- 試合（紅白戦、練習試合、大会）の記録も残せます。
- 是非ご活用ください。

# テーブル設計図

## usersテーブル
|カラム             |型     |オプション|
|------------------|-------|--------|
|name              |string |not_null|
|encrypted_password|string |        |
|age               |integer|        |
|sex               |integer|        |

### Association
- has_many :trainings
- has_many :team_users
- mas_many :teams, through: :team_users
---

## team_usersテーブル
|カラム |型         |オプション|
|------|-----------|--------|
|user  |references |null: false, foreign_key: true|
|team  |references |null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :team
---

## teamsテーブル
|カラム    |型     |オプション|
|---------|-------|--------|
|name     |string |not_null|

### Association
- has_many :trainings
- has_many :team_users
- has_many :users, through: :team_users

---

## trainingsテーブル
|カラム|型|オプション|
|---|---|---|
|title  |string |not_null|
|content|text   |        |
|time   |integer|        |
|persons|integer|        |
|fatigue|integer|        |
|user   |references |null: false, foreign_key: true|
|team   |references |null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :team

---

## commentsテーブル
|カラム|型|オプション|
|---|---|---|
|comment|text|not_null|

---

tournamentsテーブル
|レコード|型|オプション|
|---|---|---|
|date|date|not_null|
|category|integer|not_null|
|result|integer||

---