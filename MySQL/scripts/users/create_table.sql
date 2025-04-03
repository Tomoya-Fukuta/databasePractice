-- usersテーブルを作成
CREATE TABLE users (
    -- 自動的に一意の値を生成するプライマリーキー（ユーザーID）
    `id` INT NOT NULL AUTO_INCREMENT COMMENT 'ユーザーID',
    
    -- ユーザー名（必須項目で、最大255文字の固定長文字列）
    `name` CHAR(255) NOT NULL DEFAULT '' COMMENT '氏名',
    
    -- ユーザーの年齢（整数型、デフォルト値は0）
    `age` INT NOT NULL DEFAULT 0 COMMENT '年齢',
    
    -- 性別を示すID（gendersテーブルを参照する外部キー）
    `gender_id` INT NOT NULL COMMENT '性別（外部キー）',
    
    -- テーブルのプライマリーキーを設定
    PRIMARY KEY (`id`),
    
    -- gender_idとgendersテーブルのidを関連付ける外部キー制約
    CONSTRAINT fk_gender_id FOREIGN KEY (`gender_id`) REFERENCES genders(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;