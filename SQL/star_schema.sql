-- Customer Dimension
CREATE TABLE dim_customer AS
SELECT DISTINCT
    customer_name,
    segment
FROM Superstore;

-- Product Dimension
CREATE TABLE dim_product AS
SELECT DISTINCT
    product_name,
    sub_category,
    category
FROM Superstore;

-- Location Dimension
CREATE TABLE dim_location AS
SELECT DISTINCT
    country,
    market,
    region,
    state
FROM Superstore;

-- Date Dimension
CREATE TABLE dim_date AS
SELECT DISTINCT
    order_date
FROM Superstore;

-- Fact Table
CREATE TABLE fact_sales AS
SELECT
    order_id,
    order_date,
    customer_name,
    product_name,
    region,
    sales,
    quantity,
    profit
FROM Superstore;
