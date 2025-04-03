-- 結合クエリ: ユーザー情報と性別名を取得
-- このクエリはusersテーブルとgendersテーブルを結合して、ユーザーの性別名を取得するためのものです。

SELECT 
    -- ユーザーIDを取得し、"user_id"として表示
    users.id AS user_id,

    -- ユーザー名を取得し、"user_name"として表示
    users.name AS user_name,

    -- ユーザーの年齢を取得
    users.age,

    -- gendersテーブルから性別名を取得し、"gender"として表示
    genders.name AS gender
FROM 
    -- usersテーブルを基準にデータを結合
    users

JOIN 
    -- users.gender_idをgenders.idに結合して性別名を取得
    genders
ON 
    users.gender_id = genders.id;