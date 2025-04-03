# テーブル間のリレーションシップ

このドキュメントは、データベース内の各テーブル間のリレーションシップを明確にするためのもの。
各テーブルの説明、主要なカラム、外部キー制約について記載しています。

## `users` テーブル
- **概要**: ユーザー情報を格納するテーブル。
- **主キー**: `id`
- **主なカラム**:
  - `id` (INT, AUTO_INCREMENT, PRIMARY KEY)
  - `name` (CHAR(255), NOT NULL, デフォルト値: `''`, コメント: '氏名')
  - `age` (INT, NOT NULL, デフォルト値: `0`, コメント: '年齢')
  - `gender_id` (INT, FOREIGN KEY, コメント: '性別ID')
- **外部キー**:
  - `gender_id` → `genders.id`

---

## `genders` テーブル
- **概要**: 性別の選択肢を管理するテーブル。
- **主キー**: `id`
- **主なカラム**:
  - `id` (INT, AUTO_INCREMENT, PRIMARY KEY)
  - `name` (VARCHAR(50), NOT NULL, UNIQUE, コメント: '性別')
- **関連するテーブル**:
  - `users.gender_id` → `genders.id`

---

## `jobs` テーブル
- **概要**: ユーザーの職業を格納するテーブル。
- **主キー**: `id`
- **主なカラム**:
  - `id` (INT, AUTO_INCREMENT, PRIMARY KEY)
  - `user_id` (INT, FOREIGN KEY, コメント: 'ユーザーID')
  - `name` (CHAR(255), NOT NULL, デフォルト値: `会社員`, コメント: '仕事名')
- **外部キー**:
  - `user_id` → `users.id`

  ### テーブル間の関係性
- `users`は`genders`を参照（`users.gender_id` → `genders.id`）
- `users`は`jobs`を参照（`jobs.user_id` → `users.id`）

関係図：
users
  ├── gender_id → genders.id
  └── id → jobs.user_id

genders
  └── id ← users.gender_id

jobs
  └── user_id ← users.id

  ### 注意事項
- 外部キーが変更される場合は、関連するテーブルにも影響があるため注意が必要。
- 新しいテーブルを追加する場合、このドキュメントを更新してください。