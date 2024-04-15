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