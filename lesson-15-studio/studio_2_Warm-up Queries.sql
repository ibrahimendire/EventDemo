
--  one way  for first one
-- SELECT  isbn ,title
-- FROM  book 
--  INNER JOIN genre ON book.genre_id=genre.genre_id
--  WHERE genres = 'mystery' ;
--  
-- second way for first one

-- SELECT title, isbn 
-- FROM book
-- WHERE genre_id IN (SELECT genre_id FROM genre WHERE genres = "Mystery");
--  
 
 
 -- one way for second one
 
SELECT  title , first_name,last_name
FROM book
INNER JOIN author ON book.author_id=author.author_id
WHERE deathday IS  NULL;

