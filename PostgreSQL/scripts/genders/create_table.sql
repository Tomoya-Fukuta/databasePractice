CREATE TABLE genders (
    id SERIAL PRIMARY KEY,        -- 自動インクリメントのID
    name gender_enum NOT NULL     -- ENUM型を利用した性別名
);

COMMENT ON COLUMN genders.name IS '性別'