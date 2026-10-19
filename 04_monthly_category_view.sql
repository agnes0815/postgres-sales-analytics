DROP VIEW IF EXISTS category_sales_summary;

CREATE VIEW category_sales_summary AS
SELECT
    DATE_TRUNC('month', order_date)::date AS sales_month,
    category,
    SUM(quantity) AS total_units_sold,
    SUM(quantity * unit_price)::numeric AS total_revenue
FROM sales_data
GROUP BY sales_month, category
ORDER BY sales_month, total_revenue DESC;
