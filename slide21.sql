select
	count(*) as total,
	COUNT(case when a.positive > a.negative then 1 end) as positive,
	COUNT(case when a.positive < a.negative then 1 end) as negative,
	COUNT(case when a.positive = a.negative then 1 end) as neutral
from
	good_news.annotations a
left join headlines h on
	a.headline_id = h.id
where
	h.headline like '%Trump%'
    or h.headline like '%Donald%';
---- gives us percentage of positive/negative/neutral as voted by users about trump 