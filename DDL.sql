/*1--You are asked to create the above given relational model using SQL language and based on the different mentioned constraints.*/
CREATE TABLE CUSTOMER (
    Customer_ID VARCHAR2(20) CONSTRAINT PK_Customer PRIMARY KEY, 
    Customer_Name VARCHAR2(20) CONSTRAINT NN_Name NOT NULL,
    Customer_Tel NUMBER 
);

CREATE TABLE PRODUCT (
    Product_ID VARCHAR2(20) CONSTRAINT PK_Product PRIMARY KEY, 
    Product_Name VARCHAR2(20) CONSTRAINT NN_Name NOT NULL,
    Price NUMBER CONSTRAINT test_price_positive CHECK (Price > 0)
);

CREATE TABLE ORDERS (
    Customer_ID VARCHAR2(20), 
    Product_ID VARCHAR2(20) ,
    Quantity NUMBER,
    Table_amount NUMBER ,
    CONSTRAINT FK_Customer FOREIGN KEY (Customer_ID) REFERENCES Customer (Customer_ID),
    CONSTRAINT FK_Product FOREIGN KEY (Product_ID) REFERENCES Product (Product_ID)
);

/*2-After creating tables, write SQL commands to:*/
        /* Add a column Category (VARCHAR2(20)) to the PRODUCT table. */
            ALTER TABLE PRODUCT ADD Category VARCHAR2(20);
         /*Add a column OrderDate (DATE)  to the ORDERS table which have SYSDATE as a default value.*/
            ALTER TABLE ORDERS ADD OrderDate SET DEFAULT 'SYSDATE';   