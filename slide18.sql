SELECT date_trunc('month', h.published_at) as month_year,
       COUNT(h.id)           AS  headlines_count,
       sum(h.predicted_class)AS total_positive_headlines,
       round(((sum(h.predicted_class)/count(h.id))*100),2) AS percent_positive_headlines
           FROM good_news.headlines h
  where (headline like '%Donald%' 
   or headline like '%Trump%')
   and semantic_value != 0
   and h.origin in ('cnn', 'cnn.com', 'CNN')
GROUP BY 
         date_trunc('month', h.published_at)
ORDER BY month_year ASC, percent_positive_headlines;
---- percent positive over time, for trump, from cnn 