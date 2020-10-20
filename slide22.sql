SELECT
       COUNT(h.id)           AS  headlines_count,
       sum(h.predicted_class)AS total_positive_headlines,
       count(h.id) - sum(h.predicted_class)as total_negative_headlines,
       round(((sum(h.predicted_class)/count(h.id))*100),2) AS percent_positive_headlines,
       round(((count(h.id) - sum(h.predicted_class))/count(h.id)*100),2) as percent_negative_headlines
           FROM good_news.headlines h
  where (h.headline like '%Donald%' 
   or h.headline like '%Trump%');
   ---- percent positive and negative for all headlines regarding trump - not used in final presentation


   select 
 	   count(ch.id),
       sum(ch.positive) as total_positive,
       sum(ch.negative) as total_negative,
       ((sum(ch.positive)/ cast(count(ch.id) as double precision)) * 100) as percent_positive,
       ((sum(ch.negative)/ cast(count(ch.id) as double precision)) * 100) as percent_negative
 from (select h.id,
	(case when h.predicted_class = 1 and semantic_value != 0 then 1 end) as positive,
	(case when h.predicted_class = 0 and semantic_value != 0 then 1 end) as negative
from
	good_news.headlines h 
where
	h.headline like '%Trump%'
	or h.headline like '%Donald%') as ch;
    ---- neutral omitted and created in google sheet instead
    ---- percent positive and negative overall headline concerning trump

