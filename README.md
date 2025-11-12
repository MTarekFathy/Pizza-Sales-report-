# 🍕 Pizza Sales Analysis Dashboard

## 📊 Project Overview
This project analyzes pizza sales data using **SQL** and **Power BI** to uncover insights such as total revenue, order trends, and best-selling pizzas.  
It demonstrates how raw sales data can be transformed into meaningful visual insights through data cleaning, SQL analysis, and interactive dashboards.

---

## 🧠 Objectives
- Calculate key performance indicators (KPIs):
  - Total Revenue  
  - Total Orders  
  - Total Pizzas Sold  
  - Average Order Value  
  - Average Pizzas per Order
- Analyze sales trends by:
  - Day of the week  
  - Month of the year  
  - Pizza size and category  
- Identify **Top & Bottom 5 pizzas** by revenue, order count, and quantity.

---

## 🗄️ Data Source
The dataset used in this project is `pizza_sales.csv`, which contains:
- `order_id`
- `order_date`
- `pizza_name`
- `pizza_category`
- `pizza_size`
- `quantity`
- `total_price`

---

## 🧩 Tools Used
- **SQL Server** – for data cleaning, aggregation, and analysis  
- **Power BI** – for interactive visualization and dashboard creation  

---

## 🧾 SQL Queries
Key SQL views created include:

```sql
-- Total Revenue
CREATE OR ALTER VIEW Total_Revenue AS
SELECT SUM(total_price) AS 'Total Revenue'
FROM pizza_sales;

-- Average Order Value
CREATE OR ALTER VIEW Average_Order_Value AS
SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS 'Average Order Value'
FROM pizza_sales;

-- Total Pizzas Sold
CREATE OR ALTER VIEW Total_Pizza_Sold AS
SELECT SUM(quantity) AS 'Total Pizza Sold'
FROM pizza_sales;

-- Total Orders
CREATE OR ALTER VIEW Total_Orders AS
SELECT COUNT(DISTINCT order_id) AS 'Total Orders'
FROM pizza_sales;
