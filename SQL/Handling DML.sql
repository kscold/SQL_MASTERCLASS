 -- DML(Data Manipulation Language)
-- DML은 크게 2개 update(수정, 삭제), query(slect)가 존재함
INSERT INTO
  movies (title, rating, released, overview)
VALUES
  --   (
  --     'The Loard of The Rings',
  --     0.5,
  --     1,
  --     'Rings and hobbits'
  --   ),
  ('Dune: Part One', 10, 1, 'Sand');

-- 특정 데이터의 rating을 10로 수정
UPDATE
  movies
SET
  rating = rating + 2
WHERE
  title = 'The Loard of The Rings';

DELETE FROM
  movies
WHERE
  movie_id = 2;

-- sql의 명령은 오른쪽에서 왼쪽으로 실행이 됨
-- 기본적인 select 문법
-- AS를 통해 임시 필드를 만들어서 계산값을 보여줄 수 있음
SELECT
	REPLACE(title, ': Part One', ' I') AS title,
  rating * 2 AS double_rating,
	UPPER(overview) AS overview_upp
FROM
  movies;