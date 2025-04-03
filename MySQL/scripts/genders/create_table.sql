-- gendersテーブルを作成
CREATE TABLE genders (
    -- 自動的に一意の値を生成するプライマリーキー（性別ID）
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT '性別のユニークID（プライマリーキー）',

    -- 性別を表す名前（必須項目で一意）
    name VARCHAR(50) NOT NULL UNIQUE COMMENT '性別の名前（例: Man, Woman, Otherなど）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;