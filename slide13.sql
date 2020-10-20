

SELECT COUNT(id) 
FROM good_news.headlines 
WHERE (headline LIKE '%Jacinda%' 
   OR headline LIKE '%Ardern%' 
   OR headline LIKE '%New Zealand%');
---- select and counts all headlines involving nz 

select count(id) 
from good_news.headlines 
where (headline like '%Justin%' 
   or headline like '%Trudeau %' 
   or headline like '%Canada%');
---- select and count all headlines involving ca 

select count(id) 
from good_news.headlines 
where (headline like '%Boris%' 
   or headline like '%Johnson %' 
   or headline like '%BoJo%');
---- select and count all headlines involving uk

select count(id) 
from good_news.headlines 
where (headline like '%Xi%' 
   or headline like '%Jinping %' 
   or headline like '%China%');
---- select and count all headlines involving cn

select count(id) 
from good_news.headlines 
where (headline like '%Angela%' 
   or headline like '%Merkel %' 
   or headline like '%Germany%');
---- select and counts all headlines involving de

select count(id) 
from good_news.headlines 
where (headline like '%Stefan%' 
   or headline like '%Löfven %' 
   or headline like '%Sweden%');
---- select and counts all headlines involving sweden 
---- only generates 42 headlines, removed for insignificance, too prone to errors in the data 

select count(id) 
from good_news.headlines 
where (headline like '%Donald%' 
   or headline like '%Trump%');
  --- select and counts all headlines involving Trump
