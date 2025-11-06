task4_queries.sql

-- How many total records exist?
SELECT COUNT(*) AS total_records FROM fashion_boutique;
-- How many unique brands are in the dataset?
SELECT COUNT(DISTINCT brand) AS unique_brands FROM fashion_boutique;
-- List top 10 brands by number of products
SELECT brand, COUNT(*) AS product_count
FROM fashion_boutique
GROUP BY brand
ORDER BY product_count DESC
LIMIT 10;
-- Find average original and current prices
SELECT 
    ROUND(AVG(original_price), 2) AS avg_original_price,
    ROUND(AVG(current_price), 2) AS avg_current_price
FROM fashion_boutique;
-- Calculate average markdown percentage by season
SELECT 
    season, 
    ROUND(AVG(markdown_percentage), 2) AS avg_discount
FROM fashion_boutique
GROUP BY season
ORDER BY avg_discount DESC;
-- Calculate return rate (percentage of products returned)
SELECT 
    ROUND(
        SUM(CASE WHEN is_returned = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 
        2
    ) AS return_rate_percent
FROM fashion_boutique;
-- Count most common return reasons
SELECT 
    return_reason, 
    COUNT(*) AS count_reason
FROM fashion_boutique
WHERE is_returned = 'Yes'
GROUP BY return_reason
ORDER BY count_reason DESC
LIMIT 5;
-- Find average customer rating per brand
SELECT 
    brand, 
    ROUND(AVG(customer_rating), 2) AS avg_rating,
    COUNT(*) AS total_products
FROM fashion_boutique
GROUP BY brand
HAVING total_products >= 50
ORDER BY avg_rating DESC
LIMIT 10;
-- Create a summarized view for brand analysis
DROP VIEW IF EXISTS brand_insight;

-- Create a summarized view for brand analysis
CREATE VIEW brand_insight AS
SELECT 
    brand,
    COUNT(*) AS product_count,
    ROUND(AVG(current_price), 2) AS avg_price,
    ROUND(AVG(markdown_percentage), 2) AS avg_discount,
    ROUND(AVG(customer_rating), 2) AS avg_rating,
    ROUND(SUM(CASE WHEN is_returned = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS return_rate
FROM fashion_boutique
GROUP BY brand;

SELECT * FROM brand_insight ORDER BY return_rate DESC LIMIT 10;

-- Create indexes to speed up queries involving brand and season
CREATE INDEX idx_brand ON fashion_boutique(brand);
CREATE INDEX idx_season ON fashion_boutique(season);
CREATE INDEX idx_return ON fashion_boutique(is_returned);
