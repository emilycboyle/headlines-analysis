SELECT COUNT(h.id)           AS  headlines_count,
       sum(h.predicted_class)AS total_positive_headlines,
       round(((sum(h.predicted_class)/count(h.id))*100),2) AS percent_positive_headlines,
CASE
WHEN h.origin LIKE '%guardian%' OR h.origin LIKE '%The Guardian%' THEN 'the-guardian'
           WHEN h.origin IN ('Daily Mail', 'daily-mail', 'Dailymail.co.uk') THEN 'daily-mail'
           WHEN h.origin IN ('BBC News', 'bbc-news', 'Bbc.com') THEN 'bbc-news'
           WHEN h.origin IN ('The Telegraph', 'the-telegraph', 'Telegraph.co.uk') THEN 'the-telegraph'
           WHEN h.origin IN ('Thesun.co.uk', 'The Sun') THEN 'the-sun'
           WHEN h.origin IN ('Mirror Online', 'Mirror.co.uk') THEN 'the-mirror'
           WHEN h.origin IN ('YouTube', 'Youtube.com') THEN 'youtube'
           WHEN h.origin IN ('The Times', 'Thetimes.co.uk', 'the-times') THEN 'the-times'
           WHEN h.origin IN ('Nytimes.com', 'New York Times') THEN 'the-new-york-times'
           WHEN h.origin IN ('Nypost.com', 'New York Post') THEN 'new-york-post'
           WHEN h.origin IN ('Skysports.com', 'Sky Sports', 'Sky', 'Sky.com') THEN 'sky'
           WHEN h.origin IN ('CNBC', 'cnbc') THEN 'cncb'
           WHEN h.origin IN ('Huffpost.com', 'the-huffington-post', 'HuffPost') THEN 'the-huffington-post'
           WHEN h.origin IN ('ESPN', 'Espn.com', 'Espn.co.uk') THEN 'espn'
           WHEN h.origin IN ('Yahoo.com', 'Yahoo Entertainment') THEN 'yahoo'
           WHEN h.origin IN ('Express', 'Express.co.uk') THEN 'express'
           WHEN h.origin IN ('Itv.com', 'ITV News') THEN 'itv-news'
           WHEN h.origin IN ('CBS Sports', 'Cbssports.com') THEN 'cbs-sports'
           WHEN h.origin IN ('Los Angeles Times', 'Latimes.com') THEN 'los-angeles-times'
           ELSE h.origin END AS filtered_origin
           FROM good_news.headlines h
WHERE semantic_value != 0 -- remove neutral headlines
  and (headline like '%Boris%'
   or headline like '%Johnson %'
   or headline like '%BoJo%')
GROUP BY filtered_origin
ORDER BY headlines_count DESC, filtered_origin;
---- count and percent of positive headlines for uk

SELECT COUNT(h.id)           AS  headlines_count,
       sum(h.predicted_class)AS total_positive_headlines,
       round(((sum(h.predicted_class)/count(h.id))*100),2) AS percent_positive_headlines,
CASE
WHEN h.origin LIKE '%guardian%' OR h.origin LIKE '%The Guardian%' THEN 'the-guardian'
           WHEN h.origin IN ('Daily Mail', 'daily-mail', 'Dailymail.co.uk') THEN 'daily-mail'
           WHEN h.origin IN ('BBC News', 'bbc-news', 'Bbc.com') THEN 'bbc-news'
           WHEN h.origin IN ('The Telegraph', 'the-telegraph', 'Telegraph.co.uk') THEN 'the-telegraph'
           WHEN h.origin IN ('Thesun.co.uk', 'The Sun') THEN 'the-sun'
           WHEN h.origin IN ('Mirror Online', 'Mirror.co.uk') THEN 'the-mirror'
           WHEN h.origin IN ('YouTube', 'Youtube.com') THEN 'youtube'
           WHEN h.origin IN ('The Times', 'Thetimes.co.uk', 'the-times') THEN 'the-times'
           WHEN h.origin IN ('Nytimes.com', 'New York Times') THEN 'the-new-york-times'
           WHEN h.origin IN ('Nypost.com', 'New York Post') THEN 'new-york-post'
           WHEN h.origin IN ('NPR', 'Npr.org') THEN 'npr'
           WHEN h.origin IN ('Skysports.com', 'Sky Sports', 'Sky', 'Sky.com') THEN 'sky'
           WHEN h.origin IN ('CNBC', 'cnbc') THEN 'cncb'
           WHEN h.origin IN ('Huffpost.com', 'the-huffington-post', 'HuffPost') THEN 'the-huffington-post'
           WHEN h.origin IN ('ESPN', 'Espn.com', 'Espn.co.uk') THEN 'espn'
           WHEN h.origin IN ('Yahoo.com', 'Yahoo Entertainment') THEN 'yahoo'
           WHEN h.origin IN ('Express', 'Express.co.uk') THEN 'express'
           WHEN h.origin IN ('Itv.com', 'ITV News') THEN 'itv-news'
           WHEN h.origin IN ('CBS Sports', 'Cbssports.com') THEN 'cbs-sports'
           WHEN h.origin IN ('Los Angeles Times', 'Latimes.com') THEN 'los-angeles-times'
           ELSE h.origin END AS filtered_origin
           FROM good_news.headlines h
WHERE semantic_value != 0 -- remove neutral headlines
  and (headline like '%Xi%' 
   or headline like '%Jinping %' 
   or headline like '%China%')
GROUP BY filtered_origin
ORDER BY headlines_count DESC, filtered_origin;
---- count and percent positive for cn

SELECT COUNT(h.id)           AS  headlines_count,
       sum(h.predicted_class)AS total_positive_headlines,
       round(((sum(h.predicted_class)/count(h.id))*100),2) AS percent_positive_headlines,
CASE
WHEN h.origin LIKE '%guardian%' OR h.origin LIKE '%The Guardian%' THEN 'the-guardian'
           WHEN h.origin IN ('Daily Mail', 'daily-mail', 'Dailymail.co.uk') THEN 'daily-mail'
           WHEN h.origin IN ('BBC News', 'bbc-news', 'Bbc.com') THEN 'bbc-news'
           WHEN h.origin IN ('The Telegraph', 'the-telegraph', 'Telegraph.co.uk') THEN 'the-telegraph'
           WHEN h.origin IN ('Thesun.co.uk', 'The Sun') THEN 'the-sun'
           WHEN h.origin IN ('Mirror Online', 'Mirror.co.uk') THEN 'the-mirror'
           WHEN h.origin IN ('YouTube', 'Youtube.com') THEN 'youtube'
           WHEN h.origin IN ('The Times', 'Thetimes.co.uk', 'the-times') THEN 'the-times'
           WHEN h.origin IN ('Nytimes.com', 'New York Times') THEN 'the-new-york-times'
           WHEN h.origin IN ('Nypost.com', 'New York Post') THEN 'new-york-post'
           WHEN h.origin IN ('NPR', 'Npr.org') THEN 'npr'
           WHEN h.origin IN ('Skysports.com', 'Sky Sports', 'Sky', 'Sky.com') THEN 'sky'
           WHEN h.origin IN ('CNBC', 'cnbc') THEN 'cncb'
           WHEN h.origin IN ('Huffpost.com', 'the-huffington-post', 'HuffPost') THEN 'the-huffington-post'
           WHEN h.origin IN ('ESPN', 'Espn.com', 'Espn.co.uk') THEN 'espn'
           WHEN h.origin IN ('Yahoo.com', 'Yahoo Entertainment') THEN 'yahoo'
           WHEN h.origin IN ('Express', 'Express.co.uk') THEN 'express'
           WHEN h.origin IN ('Itv.com', 'ITV News') THEN 'itv-news'
           WHEN h.origin IN ('CBS Sports', 'Cbssports.com') THEN 'cbs-sports'
           WHEN h.origin IN ('Los Angeles Times', 'Latimes.com') THEN 'los-angeles-times'
           ELSE h.origin END AS filtered_origin
           FROM good_news.headlines h
WHERE semantic_value != 0 -- remove neutral headlines
  and (headline like '%Angela%' 
   or headline like '%Merkel %' 
   or headline like '%Germany%')
GROUP BY filtered_origin
ORDER BY headlines_count DESC, filtered_origin;
---- count and positive for de 

SELECT COUNT(h.id)           AS  headlines_count,
       sum(h.predicted_class)AS total_positive_headlines,
       round(((sum(h.predicted_class)/count(h.id))*100),2) AS percent_positive_headlines,
CASE
WHEN h.origin LIKE '%guardian%' OR h.origin LIKE '%The Guardian%' THEN 'the-guardian'
           WHEN h.origin IN ('Daily Mail', 'daily-mail', 'Dailymail.co.uk') THEN 'daily-mail'
           WHEN h.origin IN ('BBC News', 'bbc-news', 'Bbc.com') THEN 'bbc-news'
           WHEN h.origin IN ('The Telegraph', 'the-telegraph', 'Telegraph.co.uk') THEN 'the-telegraph'
           WHEN h.origin IN ('Thesun.co.uk', 'The Sun') THEN 'the-sun'
           WHEN h.origin IN ('Mirror Online', 'Mirror.co.uk') THEN 'the-mirror'
           WHEN h.origin IN ('YouTube', 'Youtube.com') THEN 'youtube'
           WHEN h.origin IN ('The Times', 'Thetimes.co.uk', 'the-times') THEN 'the-times'
           WHEN h.origin IN ('Nytimes.com', 'New York Times') THEN 'the-new-york-times'
           WHEN h.origin IN ('Nypost.com', 'New York Post') THEN 'new-york-post'
           WHEN h.origin IN ('NPR', 'Npr.org') THEN 'npr'
           WHEN h.origin IN ('Skysports.com', 'Sky Sports', 'Sky', 'Sky.com') THEN 'sky'
           WHEN h.origin IN ('CNBC', 'cnbc') THEN 'cncb'
           WHEN h.origin IN ('Huffpost.com', 'the-huffington-post', 'HuffPost') THEN 'the-huffington-post'
           WHEN h.origin IN ('ESPN', 'Espn.com', 'Espn.co.uk') THEN 'espn'
           WHEN h.origin IN ('Yahoo.com', 'Yahoo Entertainment') THEN 'yahoo'
           WHEN h.origin IN ('Express', 'Express.co.uk') THEN 'express'
           WHEN h.origin IN ('Itv.com', 'ITV News') THEN 'itv-news'
           WHEN h.origin IN ('CBS Sports', 'Cbssports.com') THEN 'cbs-sports'
           WHEN h.origin IN ('Los Angeles Times', 'Latimes.com') THEN 'los-angeles-times'
           ELSE h.origin END AS filtered_origin
           FROM good_news.headlines h
WHERE semantic_value != 0 -- remove neutral headlines
  and (headline LIKE '%Jacinda%' 
   OR headline LIKE '%Ardern%' 
   OR headline LIKE '%New Zealand%')
GROUP BY filtered_origin
ORDER BY headlines_count DESC, filtered_origin;
---- count and percent positive for nz 

SELECT COUNT(h.id)           AS  headlines_count,
       sum(h.predicted_class)AS total_positive_headlines,
       round(((sum(h.predicted_class)/count(h.id))*100),2) AS percent_positive_headlines,
CASE
WHEN h.origin LIKE '%guardian%' OR h.origin LIKE '%The Guardian%' THEN 'the-guardian'
           WHEN h.origin IN ('Daily Mail', 'daily-mail', 'Dailymail.co.uk') THEN 'daily-mail'
           WHEN h.origin IN ('BBC News', 'bbc-news', 'Bbc.com') THEN 'bbc-news'
           WHEN h.origin IN ('The Telegraph', 'the-telegraph', 'Telegraph.co.uk') THEN 'the-telegraph'
           WHEN h.origin IN ('Thesun.co.uk', 'The Sun') THEN 'the-sun'
           WHEN h.origin IN ('Mirror Online', 'Mirror.co.uk') THEN 'the-mirror'
           WHEN h.origin IN ('YouTube', 'Youtube.com') THEN 'youtube'
           WHEN h.origin IN ('The Times', 'Thetimes.co.uk', 'the-times') THEN 'the-times'
           WHEN h.origin IN ('Nytimes.com', 'New York Times') THEN 'the-new-york-times'
           WHEN h.origin IN ('Nypost.com', 'New York Post') THEN 'new-york-post'
           WHEN h.origin IN ('NPR', 'Npr.org') THEN 'npr'
           WHEN h.origin IN ('Skysports.com', 'Sky Sports', 'Sky', 'Sky.com') THEN 'sky'
           WHEN h.origin IN ('CNBC', 'cnbc') THEN 'cncb'
           WHEN h.origin IN ('Huffpost.com', 'the-huffington-post', 'HuffPost') THEN 'the-huffington-post'
           WHEN h.origin IN ('ESPN', 'Espn.com', 'Espn.co.uk') THEN 'espn'
           WHEN h.origin IN ('Yahoo.com', 'Yahoo Entertainment') THEN 'yahoo'
           WHEN h.origin IN ('Express', 'Express.co.uk') THEN 'express'
           WHEN h.origin IN ('Itv.com', 'ITV News') THEN 'itv-news'
           WHEN h.origin IN ('CBS Sports', 'Cbssports.com') THEN 'cbs-sports'
           WHEN h.origin IN ('Los Angeles Times', 'Latimes.com') THEN 'los-angeles-times'
           ELSE h.origin END AS filtered_origin
           FROM good_news.headlines h
WHERE semantic_value != 0 -- remove neutral headlines
  and (headline like '%Justin%' 
   or headline like '%Trudeau %' 
   or headline like '%Canada%')
GROUP BY filtered_origin
ORDER BY headlines_count DESC, filtered_origin;
---- count and percent positive for ca 


