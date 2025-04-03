CREATE TABLE users (
    id SERIAL PRIMARY KEY,         -- 自動インクリメントのID
    name VARCHAR(255) NOT NULL,    -- 名前
    age INT NOT NULL,              -- 年齢
    gender_id INT NOT NULL,        -- 性別を参照する外部キー
    FOREIGN KEY (gender_id) REFERENCES genders (id) -- 外部キーの設定
);

-- コメント記載
COMMENT ON COLUMN users.name IS '氏名';
COMMENT ON COLUMN users.age IS '年齢';
COMMENT ON COLUMN users.gender_id IS '性別';