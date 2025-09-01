SELECT * FROM sales.customers;

SELECT * FROM sales.transactions;

SELECT * FROM sales.products;

SELECT * FROM sales.markets;

SELECT * FROM sales.date;

SELECT count(*) FROM sales.transactions;

SELECT count(*) FROM sales.customers;

SELECT * FROM sales.transactions where market_code ="Mark001";

SELECT count(*) FROM sales.transactions where market_code ="Mark001";

SELECT * FROM sales.transactions where currency="USD";

SELECT sales.transaction.*,sales.date.* FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date;

SELECT sales.transaction.*,sales.date.* FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year=2020;

SELECT sales.transaction.*,sales.date.* FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year=2019;

SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year=2020;

SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year=2020 and sale.transactions.market_code="Mark001";

SELECT distinct product_code FROM sales.transaction where market_code="Mark001";

