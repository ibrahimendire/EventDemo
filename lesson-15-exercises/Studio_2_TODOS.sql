

-- 1, Change available to FALSE for the appropriate book.

-- UPDATE book
-- SET available = FALSE
-- WHERE book_id = 21;


-- 2, Add a new row to the loan table with 
-- today’s date as the date_out and the ids in the row 
-- matching the appropriate patron_id and book_id.
-- 

-- INSERT INTO loan (patron_id , date_out, book_id)
--  VALUES (9,CURDATE(), 21);

-- 3, Update the appropriate patron with the loan_id for 
-- the new row created in the loan table.
-- 


-- UPDATE patron 
-- SET loan_id = (SELECT MAX(loan_id) 
-- FROM loan) WHERE patron_id = 1;


-- part two
-- 1, Change available to TRUE for the appropriate book.

-- UPDATE book
-- SET available = TRUE
-- WHERE book_id = 21;


-- 2, Update the appropriate row in the loan table with today’s date as the date_in.

-- UPDATE  loan
-- SET date_in = curdate()
-- WHERE  loan_id = (SELECT loan_id FROM patron  WHERE first_name
-- ="Frank" AND last_name= 'Jelk'); 


-- 3, Update the appropriate patron changing loan_id back to null

-- UPDATE  patron
-- SET loan_id = NULL
-- WHERE  patron_id = 9;


-- Wrap-up Query

SELECT patron_loan.first_name, patron_loan.last_name, genres
FROM (SELECT patron.first_name,patron.last_name, loan.book_id
 FROM patron 
 INNER JOIN 
loan ON loan.patron_id = patron.patron_id 
) AS patron_loan

INNER JOIN (
SELECT *
FROM book INNER JOIN genre
ON book.genre_id = genre.genre_id
) AS book_genre
ON patron_loan.book_id =book_genre.book_id
WHERE patron_loan.date_in IS  NULL ;















