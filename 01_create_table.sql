DROP TABLE IF EXISTS sales_data;

CREATE TABLE sales_data (
    order_id     SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category     VARCHAR(50)  NOT NULL,
    quantity     INT          NOT NULL CHECK (quantity >= 0),
    unit_price   NUMERIC(10,2) NOT NULL CHECK (unit_price >= 0),
    order_date   DATE          NOT NULL
);
