
/* QUESTION 1: ACHIEVE FIRST NORMAL FORM*/
-- order tables
CREATE TABLE orders(
    order_id INT  AUTO_INCREMENT PRIMARY KEY
);

-- customer table
CREATE TABLE customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customerName VARCHAR(255) NOT NULL
);

-- products Table
CREATE TABLE productDetail(
    productId INT AUTO_INCREMENT PRIMARY KEY,
    productcategory VARCHAR(255) NOT NULL,
    productName VARCHAR(255) NOT NULL
);
/*
in products table, we can have category such as Tech whereby productName can phone,laptop,mouse e.t.c
*/



/* Question 2 Achieving 2NF (Second Normal Form)  */
CREATE TABLE orderDetails(
    order_id INT  AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    productId INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY(productId) REFERENCES products(productId),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);
/*
in orders table: 
primary key= order_id 
customer_id = foreign key : why:  the customer_id can provide details for the customer name, city, address
product_id = foreign key: why: the product_id can provide the productName, productPrice, productCategory
*/
