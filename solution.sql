-- You’ll need to use the database schema and examine many of the table’s records to determine how to answer each question.
-- For each of the following questions
-- Write a comment that specifies which question you are answering.
-- Write the SQL query below that comment.


-- 1. Which authors are represented in our store?
SELECT * FROM authors;

-- 2. Which authors are also distinguished authors?
SELECT * FROM authors INNER JOIN distinguished_authors ON authors.id = distinguished_authors.id;

-- 3. Which authors are not distinguished authors?
SELECT * FROM authors LEFT JOIN distinguished_authors ON authors.id = distinguished_authors.id WHERE distinguished_authors.id IS NULL;

-- 4. How many authors are represented in our store?
SELECT COUNT(*) FROM authors;

-- 5. Who are the favorite authors of the employee with the first name of Michael?
SELECT * FROM employees INNER JOIN favorite_authors ON employees.id = favorite_authors.employee_id WHERE employees.first_name='Michael';

-- 6. What are the titles of all the books that are in stock today?
SELECT books.title FROM books 
JOIN editions ON books.id = editions.book_id
JOIN daily_inventory ON daily_inventory.isbn = editions.isbn 
WHERE daily_inventory.is_stocked = true;

-- 7. Insert one of your favorite books into the database. Hint: You’ll want to create data in at least 2 other tables to completely create this book.



-- 8. What authors have books that are not in stock?
-- 9. What is the title of the book that has the most stock?




