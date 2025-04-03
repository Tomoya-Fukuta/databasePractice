-- 結合クエリ: ユーザー、性別、職業情報を取得
-- このクエリはusers、genders、jobsの3つのテーブルを結合し、各ユーザーの性別と職業を取得するためのもの。

SELECT 
     -- ユーザーのIDを取得し、"user_id"として表示
     users.id AS user_id,

     -- ユーザー名を取得し、"user_name"として表示
     users.name AS user_name,

     -- ユーザーの年齢を取得
     users.age,

     -- gendersテーブルから性別名を取得し、"gender"として表示
     genders.name AS gender,

     -- jobsテーブルから職業名を取得し、"job_title"として表示
     jobs.name AS job_title
FROM 
     -- usersテーブルを基準にデータを結合
     users

JOIN 
     -- users.gender_idをgenders.idに結合して性別を取得
     genders
ON 
     users.gender_id = genders.id

JOIN 
     -- users.idをjobs.user_idに結合して職業を取得
     jobs
ON 
     users.id = jobs.user_id;