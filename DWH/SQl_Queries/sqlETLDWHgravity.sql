SELECT 
    a.author_id AS AuthorKey,
    a.author_name AS AuthorName
FROM dbo.author a



SELECT ab author, db.BookKey
FROM author ab, book
JOIN author da ON ab.Author_Id = da.AuthorBusinessKey
JOIN book db ON ab.Book_Id = db.BookBusinessKey;



SELECT 
    b.book_id AS BookKey,
    b.title AS Title,
    b.isbn13 AS ISBN,
	l.language_id,
    l.language_code  ,
	l.language_name AS Language,
    b.num_pages AS NumPages,
	p.publisher_id,
    b.publication_date AS PublicationDate,
    p.publisher_name AS Publisher
	
FROM dbo.book b
LEFT JOIN dbo.book_language l ON b.language_id = l.language_id
LEFT JOIN dbo.publisher p ON b.publisher_id = p.publisher_id



select * from shipping_method



select * from customer c join customer_address ca on ca.customer_id = c.customer_id 
join address a on a.address_id = ca.address_id
where c.customer_id = 1044

select customer_id,address_id from customer_address
where customer_id = 1044


select * from book_language


select * from author
where author_id = 568723


select * from customer


SELECT
    co.order_id ,
    sm.method_id,
   ISNULL(oh.history_id, 99999) as history_id ,
    c.customer_id,
    b.book_id,

 CAST([order_date] AS DATE) AS split_order_date,
 CAST([order_date] AS TIME(0)) AS split_order_time,
 co.dest_address_id,
    ol.price,
	sm.cost
FROM cust_order AS co
LEFT JOIN shipping_method AS sm
ON co.shipping_method_id = sm.method_id
LEFT JOIN order_history AS oh
ON co.order_id = oh.order_id
LEFT JOIN customer AS c
ON co.customer_id = c.customer_id
LEFT JOIN order_line AS ol
ON co.order_id = ol.order_id
LEFT JOIN book AS b
ON ol.book_id = b.book_id
left join address as ad  on ad.address_id=co.dest_address_id
where oh.history_id = 99999

select * from cust_order co left join order_history oh on co.order_id=oh.order_id left join order_status os on os.status_id = oh .status_id
where os.status_id = 4


select * from address


