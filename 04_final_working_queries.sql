-- ✅ Final Working Queries for AltSchool SQL Project

-- Q1: List all authors and the number of books they've written
%%sql q1_result <<
SELECT 
    b.title AS title,
    a.name AS author_name,
    COUNT(oi.book_id) AS order_count
FROM 
    order_items oi
JOIN 
    books b ON oi.book_id = b.book_id
JOIN 
    authors a ON b.author_id = a.author_id
GROUP BY 
    b.book_id
ORDER BY 
    order_count DESC,
    author_name DESC
LIMIT 5;

-- Q2: List books published before 2000
%%sql q2_result <<
SELECT 
    a.name AS author_name,
    SUM(oi.quantity * b.price) AS total_revenue
FROM 
    order_items oi
JOIN 
    books b ON oi.book_id = b.book_id
JOIN 
    authors a ON b.author_id = a.author_id
GROUP BY 
    a.author_id
ORDER BY 
    total_revenue DESC;

-- Q3: Average rating per book title
%%sql q3_result <<
SELECT 
    c.name AS customer_name,
    COUNT(o.order_id) AS order_count
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id
ORDER BY 
    order_count DESC, 
    customer_name DESC
LIMIT 5;

-- Q4: Books with fewer than 3 reviews
%%sql q4_result <<
SELECT 
    o.order_id, 
    c.name AS customer_name, 
    o.order_date
FROM 
    orders o
JOIN 
    order_items oi ON o.order_id = oi.order_id
JOIN 
    customers c ON o.customer_id = c.customer_id
WHERE 
    oi.book_id = 1
ORDER BY 
    o.order_id

-- Q5: Reviews with rating 4 and above, with book title and author
%%sql q5_result <<
SELECT 
    r.review_id,
    b.title AS book_title,
    a.name AS author_name,
    r.rating,
    r.review_text
FROM reviews r
JOIN books b ON r.book_id = b.book_id
JOIN authors a ON b.author_id = a.author_id
WHERE r.rating >= 4
ORDER BY r.review_id
LIMIT 5;
