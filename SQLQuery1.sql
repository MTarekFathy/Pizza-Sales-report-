use [Pizza DB]
Go
Create or Alter view Total_Revenue as
Select Sum(total_price) as 'Total Revenue'
from pizza_sales
Go
Create or Alter view Average_Order_Value as
select sum(total_price) / COUNT(distinct order_id)  as 'Average Order Value'
from pizza_sales
Go
Create or Alter view Total_Pizza_Sold as
select sum(quantity) As 'Total Pizza Sold'
from pizza_sales
Go
Create or Alter view Total_Orders as
select count(distinct order_id) as 'Total Orders'
from pizza_sales
Go
Create or Alter view Average_pizzas_per_order as
select SUM(quantity) / COUNT(distinct order_id)  'Average pizzas per order' 
from pizza_sales
Go
Create or Alter view Daily_Trend_for_Total_Orders as
select DATEPART(WEEKDAY, order_date) AS Day_Num,
DAtename(DW, order_date) as 'Order Day', count(distinct order_id) as 'Total Orders'
from pizza_sales
group by DAtename(DW, order_date), DATEPART(WEEKDAY, order_date)
Go
Create or Alter view Monthly_Trend_for_Orders as
select     DATEPART(MONTH, order_date) AS Month_Num,
DATENAME(MONTH , order_date) as 'Month',  count(distinct order_id) as 'Total Orders'
from pizza_sales
group by DATENAME(MONTH , order_date),DATEPART(MONTH, order_date)
Go
Create or Alter view PCT_of_Sales_by_Pizza_Category as
select pizza_category , Sum(total_price) as 'Total Revenue' , SUM(total_price) * 100 / (select sum(total_price) from pizza_sales) as 'PCT'
from pizza_sales
group by pizza_category
Go
Create or Alter view PCT_of_Sales_by_Pizza_Size as
select pizza_size , Sum(total_price) as 'Total Revenue' , SUM(total_price) * 100 / (select sum(total_price) from pizza_sales) as 'PCT'
from pizza_sales
group by pizza_size

Go
Create or Alter view Total_Pizzas_Sold_by_Pizza_Category as
select pizza_category , sum(quantity) As 'Total Pizza Sold'
from pizza_sales
group by pizza_category
Go
Create or Alter view Top_5_Pizzas_by_Revenue as
select Top 5 pizza_name, Sum(total_price) as 'Total Revenue'
from pizza_sales
group by pizza_name
order by [Total Revenue] desc
Go
Create or Alter view Bottom_5_Pizzas_by_Revenue as
select Top 5 pizza_name, Sum(total_price) as 'Total Revenue'
from pizza_sales
group by pizza_name
order by [Total Revenue] asc
Go
Create or Alter view Top_5_Pizzas_by_Quantity as
select top 5 pizza_name , sum(quantity) As 'Total Pizza Sold' 
from pizza_sales
Group by pizza_name
order by [Total Pizza Sold] desc
Go
Create or Alter view Bottom_5_Pizzas_by_Quantity as
select top 5 pizza_name , sum(quantity) As 'Total Pizza Sold' 
from pizza_sales
Group by pizza_name
order by [Total Pizza Sold] asc
Go
Create or Alter view Top_5_Pizzas_by_Total_Orders as
select top 5 pizza_name , count(distinct order_id) as 'Total Orders'
from pizza_sales
group by pizza_name
order by [Total Orders] desc
Go
Create or Alter view Bottom_5_Pizzas_by_Total_Orders as
select top 5 pizza_name , count(distinct order_id) as 'Total Orders'
from pizza_sales
group by pizza_name
order by [Total Orders] asc

