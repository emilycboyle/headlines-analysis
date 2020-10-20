SELECT date_trunc('month', h.published_at) as month_year,
       COUNT(h.id)           AS  headlines_count,
       sum(h.predicted_class)AS total_positive_headlines,
       round(((sum(h.predicted_class)/count(h.id))*100),2) AS percent_positive_headlines
           FROM good_news.headlines h
  where (headline like '%Donald%' 
   or headline like '%Trump%')
   and semantic_value != 0
   and (
       h.origin IN ('Daily Mail', 'daily-mail', 'Dailymail.co.uk') 
   	or h.origin IN ('BBC News', 'bbc-news', 'Bbc.com') 
    or h.origin IN ('The Telegraph', 'the-telegraph', 'Telegraph.co.uk') 
    or h.origin in ('guardian', 'The Guardian') 
    or h.origin in ('Independent', 'independent.co.uk', 'independent')
    or h.origin in ('cnn', 'cnn.com', 'CNN') )
GROUP BY  
         date_trunc('month', h.published_at)
ORDER BY headlines_count DESC, percent_positive_headlines;
---- percentage positive headlines over time, per six top publishers for trump


SELECT date_trunc('month', h.published_at) as month_year,
       COUNT(h.id)           AS  headlines_count,
       sum(h.predicted_class)AS total_positive_headlines,
       round(((sum(h.predicted_class)/count(h.id))*100),2) AS percent_positive_headlines
           FROM good_news.headlines h
  where (headline like '%Boris%' 
   or headline like '%Johnson%'
   or headline like 'BoJo')
   and semantic_value != 0
   and (
       h.origin IN ('Daily Mail', 'daily-mail', 'Dailymail.co.uk') 
   	or h.origin IN ('BBC News', 'bbc-news', 'Bbc.com') 
    or h.origin IN ('The Telegraph', 'the-telegraph', 'Telegraph.co.uk') 
    or h.origin in ('guardian', 'The Guardian') 
    or h.origin in ('Independent', 'independent.co.uk', 'independent')
    or h.origin in ('cnn', 'cnn.com', 'CNN') )
GROUP BY  
         date_trunc('month', h.published_at)
ORDER BY month_year asc, percent_positive_headlines;
---- percentage positive headlines over time, per six top publishers for johnson


SELECT date_trunc('month', h.published_at) as month_year,
       COUNT(h.id)           AS  headlines_count,
       sum(h.predicted_class)AS total_positive_headlines,
       round(((sum(h.predicted_class)/count(h.id))*100),2) AS percent_positive_headlines
           FROM good_news.headlines h
  where (headline like '%Xi%' 
   or headline like '%Jinping %'
   or headline like '%China%')
   and semantic_value != 0
   and (
       h.origin IN ('Daily Mail', 'daily-mail', 'Dailymail.co.uk') 
   	or h.origin IN ('BBC News', 'bbc-news', 'Bbc.com') 
    or h.origin IN ('The Telegraph', 'the-telegraph', 'Telegraph.co.uk') 
    or h.origin in ('guardian', 'The Guardian') 
    or h.origin in ('Independent', 'independent.co.uk', 'independent')
    or h.origin in ('cnn', 'cnn.com', 'CNN') )
GROUP BY  
         date_trunc('month', h.published_at)
ORDER BY month_year asc, percent_positive_headlines;
---- percentage positive headlines over time, per six top publishers for jinping

SELECT date_trunc('month', h.published_at) as month_year,
       COUNT(h.id)           AS  headlines_count,
       sum(h.predicted_class)AS total_positive_headlines,
       round(((sum(h.predicted_class)/count(h.id))*100),2) AS percent_positive_headlines
           FROM good_news.headlines h
  where (headline like '%Angela%' 
   or headline like '%Merkel %'
   or headline like '%Germany%')
   and semantic_value != 0
   and (
       h.origin IN ('Daily Mail', 'daily-mail', 'Dailymail.co.uk') 
   	or h.origin IN ('BBC News', 'bbc-news', 'Bbc.com') 
    or h.origin IN ('The Telegraph', 'the-telegraph', 'Telegraph.co.uk') 
    or h.origin in ('guardian', 'The Guardian') 
    or h.origin in ('Independent', 'independent.co.uk', 'independent')
    or h.origin in ('cnn', 'cnn.com', 'CNN') )
GROUP BY  
         date_trunc('month', h.published_at)
ORDER BY month_year asc, percent_positive_headlines;
---- percentage positive headlines over time, per six top publishers for merkel

SELECT date_trunc('month', h.published_at) as month_year,
       COUNT(h.id)           AS  headlines_count,
       sum(h.predicted_class)AS total_positive_headlines,
       round(((sum(h.predicted_class)/count(h.id))*100),2) AS percent_positive_headlines
           FROM good_news.headlines h
  where (headline like '%Jacina%' 
   or headline like '%Ardern %'
   or headline like '%New Zealand%')
   and semantic_value != 0
   and (
       h.origin IN ('Daily Mail', 'daily-mail', 'Dailymail.co.uk') 
   	or h.origin IN ('BBC News', 'bbc-news', 'Bbc.com') 
    or h.origin IN ('The Telegraph', 'the-telegraph', 'Telegraph.co.uk') 
    or h.origin in ('guardian', 'The Guardian') 
    or h.origin in ('Independent', 'independent.co.uk', 'independent')
    or h.origin in ('cnn', 'cnn.com', 'CNN') )
GROUP BY  
         date_trunc('month', h.published_at)
ORDER BY month_year asc, percent_positive_headlines;
---- percentage positive headlines over time, per six top publishers for ardern

