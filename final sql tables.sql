CREATE TABLE products (
    product_id VARCHAR(255) PRIMARY KEY,
    product_name VARCHAR(255) UNIQUE NOT NULL,  
    mrp INT,
    price INT,
    tax INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE order_items (
    item_id VARCHAR(255) PRIMARY KEY,
    order_id VARCHAR(255),
    customer_id VARCHAR(255),
    product_id VARCHAR(255),
    product_name VARCHAR(255),
    quantity INT,
    mrp INT,
    price INT,
    tax INT,
    total_amount INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

select * from  orders;