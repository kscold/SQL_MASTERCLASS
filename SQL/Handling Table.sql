CREATE TABLE
  movies (
    movie_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, -- 항상 보장된 유니크한 key를 받기 위해 PK 설정
    title TEXT NOT NULL UNIQUE,
    released INTEGER NOT NULL CHECK (released > 0),
    overview TEXT NOT NULL CHECK (LENGTH(overview) <= 100),
    rating REAL NOT NULL CHECK (rating BETWEEN 0 AND 10), -- Float
    director TEXT,
    -- for_kids INTEGER NOT NULL DEFAULT 0 CHECK (for_kids = 0 OR for_kids = 1) -- sqllite는 0 or 1 로 불리언 판단 따라서 제약 조건으로 기본 0을 줌
    for_kids INTEGER NOT NULL DEFAULT 0 CHECK (for_kids BETWEEN 0 AND 1)
    -- poster BLOB -- 이미지와 같은 바이너리 데이터
  ) STRICT;

-- STRICT를 추가해서 제약 조건을 줄 수 있음
DROP TABLE
  movies;

-- 특정 필드만 알고 있을 때 위치는 모를 때 데이터 주입
INSERT INTO
  movies (title)
VALUES
  ('TLOTR');

-- sqllite는 타입의 따라 자동적으로 tranform을 해줌
INSERT INTO
  movies (title, rating, released, overview)
VALUES
  (
    'The Load of The Rings',
    0.5,
    1,
    'Rings and hobbits'
  ),
  ('Dune: Part One', 10, 1, 'Sand');