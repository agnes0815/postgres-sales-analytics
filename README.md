# postgres-sales-analytics

Practice project from the "Introduction to Analytics Engineering" course.
Build a small sales dataset in PostgreSQL and answer business questions with SQL views.

## What it does

- Creates a `sales_data` table (orders with product, category, quantity, unit price, date)
- Loads 11 sample orders
- `category_sales_summary` view: total units sold and revenue per category
- Monthly version: same metrics per month and category, using `DATE_TRUNC`

## Files

- `01_create_table.sql` — drop + create the `sales_data` table
- `02_insert_data.sql` — insert 11 sample orders
- `03_category_view.sql` — view: revenue per category
- `04_monthly_category_view.sql` — view: revenue per month + category

## How to run

1. Connect to PostgreSQL (e.g. via pgAdmin)
2. Run the scripts in order: 01 → 04
3. Query the view: `SELECT * FROM category_sales_summary;`

Stack: PostgreSQL, pgAdmin
