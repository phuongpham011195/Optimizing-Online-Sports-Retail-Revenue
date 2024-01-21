-- Create the five tables we are going to import of csv data into.

-- Create info table
DROP TABLE IF EXISTS info;
CREATE TABLE info (
    product_name VARCHAR(255),
    product_id VARCHAR(20),
    description VARCHAR,
    PRIMARY KEY (product_id));

-- Create finance table
DROP TABLE IF EXISTS finance;
CREATE TABLE finance (
    product_id VARCHAR(20),
    listing_price FLOAT,
    sale_price FLOAT,
    discount FLOAT,
    revenue	FLOAT,
    PRIMARY KEY (product_id));

-- Create reviews table
DROP TABLE IF EXISTS reviews;
CREATE TABLE reviews (
    product_id VARCHAR(20),
    rating FLOAT,
    reviews FLOAT,
    PRIMARY KEY (product_id));

-- Create traffic table
DROP TABLE IF EXISTS traffic;
CREATE TABLE traffic (
    product_id VARCHAR(20),
    last_visited TIMESTAMP,
    PRIMARY KEY (product_id));

-- Create brand table
DROP TABLE IF EXISTS brands;
CREATE TABLE brands (
    product_id VARCHAR(20),
    brand VARCHAR(20),
    PRIMARY KEY (product_id));

-- Import a csv file into a table using COPY statement.

-- Import data for info table
COPY info (product_name, product_id, description)
FROM 'D:\Project\Optimizing Online Sports Retail Revenue\info.csv'
DELIMITER ','
CSV HEADER;

-- Import data for finance table
COPY finance (product_id, listing_price, sale_price, discount, revenue)
FROM 'D:\Project\Optimizing Online Sports Retail Revenue\finance.csv'
DELIMITER ','
CSV HEADER;

-- Import data for reviews table
COPY reviews (product_id, rating, reviews)
FROM 'D:\Project\Optimizing Online Sports Retail Revenue\reviews.csv'
DELIMITER ','
CSV HEADER;

-- Import data for traffic table
COPY traffic (product_id, last_visited)
FROM 'D:\Project\Optimizing Online Sports Retail Revenue\traffic.csv'
DELIMITER ','
CSV HEADER;

-- Import data for brands table
COPY brands (product_id, brand)
FROM 'D:\Project\Optimizing Online Sports Retail Revenue\brands.csv'
DELIMITER ','
CSV HEADER;