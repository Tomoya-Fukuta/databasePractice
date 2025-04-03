CREATE TABLE jobs (
    id SERIAL PRIMARY KEY,              -- 自動インクリメントのID
    user_id INT NOT NULL,               -- 外部キー
    name VARCHAR(255) NOT NULL DEFAULT '会社員', -- 仕事名
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users (id) -- 外部キーの設定
);

COMMENT ON COLUMN jobs.name IS '仕事名';
COMMENT ON COLUMN jobs.user_id IS 'ユーザーの外部キー';