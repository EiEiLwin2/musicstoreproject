-- Active: 1713169065631@@127.0.0.1@5432@music_store@public
select * from customer
select * from genre;
select * from genre;

#for Questoin 1.
select * from employee limit 3; # to know about column
#query
select CONCAT(first_name,' ',last_name), title  from employee order by levels DESC limit 1;
#for question 2
select * from invoice;
select count(*) As total_invoices, billing_country from invoice group by billing_country ORDER BY billing_country DESC;
#for question 3
select total as total from invoice  order by total DESC Limit 3;
select * from invoice;
#result for city that highest sale.
select billing_city,sum(total) as amount_spend from invoice group by billing_city order by amount_spend DESC limit 1;
select * from customer;
select CONCAT(c.first_name,' ',c.last_name) As customer_name,sum(i.total) As total_spent from customer c 
Join invoice i ON c.customer_id=i.customer_id GROUP BY c.customer_id order by c.customer_id DESC limit 1;
select * from genre;
select * from invoice;
select * from invoice_line;
select Concat(c.first_name,' ',c.last_name) as customer_name,c.email from customer c
Join invoice i on c.customer_id=i.customer_id
Join invoice_line l on i.invoice_id=l.invoice_id
Where track_id IN(select track_id from track Join genre on track.genre_id=genre.genre_id
Where genre.name like 'Rock') ORDER BY email;

# another way to query question 6
select CONCAT(c.first_name,' ',c.last_name) as customer,c.email,g.name as genre 
From customer c
Join invoice i ON c.customer_id=i.customer_id
Join invoice_line l ON i.invoice_id=l.invoice_id
Join track t ON  t.track_id=l.track_id
Join genre g ON t.genre_id=g.genre_id
where g.name = 'Rock'
Order by c.email;
