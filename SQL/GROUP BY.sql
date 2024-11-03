 -- SELECT -- 4
--   director,
--   SUM(revenue) AS total_revenue
-- FROM -- 1
--   movies
-- WHERE -- 2
--   director IS NOT NULL
--   AND revenue IS NOT NULL
-- GROUP BY -- 3
--   director -- 감독을 기준으로 행들을 병합
-- ORDER BY -- 5
--   total_revenue DESC; -- 감독별 총 수익을 내림차순으로 정렬
SELECT -- 4
  release_date,
  ROUND(AVG(rating), 2) AS avg_rating
FROM -- 1
  movies
WHERE -- 2
  rating IS NOT NULL
  AND release_date IS NOT NULL
GROUP BY -- 3
  release_date -- 영화 출시 년도를 기준으로 병합
ORDER BY -- 5
  avg_rating DESC;