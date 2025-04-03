-- jobsテーブルを作成
CREATE TABLE `jobs` (
    -- 自動的に一意の値を生成するプライマリーキー（仕事ID）
    `id` INT NOT NULL AUTO_INCREMENT COMMENT 'ユニークな仕事ID（プライマリーキー）',
    
    -- ユーザーを参照するID（外部キーとして定義）
    `user_id` INT NOT NULL COMMENT 'usersテーブルのユーザーIDを参照する外部キー',
    
    -- 仕事名（必須項目で、最大255文字の固定長文字列）
    `name` CHAR(255) NOT NULL DEFAULT '会社員' COMMENT '職業名（デフォルト値: 会社員）',
    
    -- テーブルのプライマリーキーを設定
    PRIMARY KEY (`id`),
    
    -- user_idとusersテーブルのidを関連付ける外部キー制約
    CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;