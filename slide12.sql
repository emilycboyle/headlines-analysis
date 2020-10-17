SELECT COUNT(id) 
FROM good_news.headlines 
WHERE headline LIKE '%Jacinda%' 
   OR headline LIKE '%Ardern%' 
   OR headline LIKE '%New Zealand%'
  AND published_at BETWEEN '2019-12-31' AND '2020-10-27' 
