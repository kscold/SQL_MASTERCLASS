-- rating에 따라서 good_or_not 필드에 특정 데이터를 넣음
SELECT
  title,
  CASE
    WHEN rating > 8 THEN '👍🏻'
    WHEN rating <= 6 THEN '👎🏻'
    ELSE '👀'
  END AS good_or_not
FROM
  movies;