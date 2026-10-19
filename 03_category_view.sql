CREATE OR REPLACE VIEW category_sales_summary AS
SELECT
    category,
    SUM(quantity) AS total_units_sold,
    SUM(quantity * unit_price)::numeric AS total_revenue
FROM sales_data
GROUP BY category
ORDER BY total_revenue DESC;
