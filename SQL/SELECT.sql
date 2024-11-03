SELECT
  *
FROM
  movies
WHERE
  --   director = 'Guy Ritchie'; 
  --   original_language <> 'en';- - <>은 !=라는 뜻
  --   release_date > 2023;
  --   release_date < 2023;
  --   revenue IS NOT NULL;
  --   status = 'Planned'
  --   AND budget > 0;
  --   평점이 9가 넘거나 rating의 데이터가 NULL genres는 Documentary인 데이터를 조회
  --   rating > 9
  --   OR (
  --     rating IS NULL
  --     AND genres = 'Documentary'
  --   );
  -- 범위 데이터를 조회하는 방법
  --   release_date > 2019 
  --   AND release_date < 2025; -- 조건으로 범위를 지정함
  --   release_date BETWEEN 2020 AND 2024; -- BETWEEN을 사용하여 범위를 지정함
  -- enum의 데이터를 조회하는 방법
  --   genres = 'Documentary'
  --   OR genres = 'Comedy'; -- Documentary나 Comedy의 데이터를 조회
  --   genres IN ('Documentary', 'Comedy'); -- IN 문법을 사용하여 Documentary나 Comedy의 데이터를 조회
  --   original_language NOT IN ('en', 'es', 'de');
  -- 특정 단어를 포함하는 값을 조회
  --   title LIKE 'The%'; -- The 뒤로 와일드카드
  --   title LIKE '%Love'; -- LOVE 앞으로 와일드카드
  --   overview LIKE '%kimchi%'; -- kimchi 앞 뒤로 와일드카드
  --   genres NOT LIKE '%Drama%';
  -- 원하는 글자의 조합을 포함하는 값을 조회
  --   title LIKE 'The ___'; -- The 뒤로 세글자를 가지는 데이터를 조회
  --   director LIKE '_____ Roberts'; -- The 뒤로 세글자를 가지는 데이터를 조회
  title LIKE 'The ___ %';