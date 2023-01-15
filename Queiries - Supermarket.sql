Use supermarket;
SELECT * FROM supermarket.sales;

select Branch, sum(Total)
from sales
group by Branch;

select avg(Rating), Branch
from sales
group by Branch;

select Branch, count(Branch) as "number of sales"
from sales
group by Branch;

select Payment, count(Payment)
from sales
group by Payment ;

select Gender, count(Gender)
from sales
group by Gender;

select ProductLine, sum(Total) as "total of sales"
from sales
group by ProductLine
order by sum(Total) desc
limit 3;

select ProductLine, sum(Total) as "total of sales", count(ProductLine)
from sales
group by ProductLine
order by sum(Total) desc;

select ProductLine, avg(Rating)
from sales
group by ProductLine
having avg(Rating)>7;

select ProductLine, avg(Rating)
from sales 
group by ProductLine
having avg(Rating)> (select avg(Rating) from sales);

select Branch, count(customertype)
from Sales
where customertype="member"
group by Branch;

select count(InvoiceID) as "number of sales in morning shift"
from sales
where Time >= 10 and Time<15.5;

select count(InvoiceID) as "number of sales in evening shift"
from sales
where Time >= 15.5 and Time<=21;







