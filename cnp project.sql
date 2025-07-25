DROP TABLE IF EXISTS revenue CASCADE;
DROP TABLE IF EXISTS consumption CASCADE;
DROP TABLE IF EXISTS zip_data CASCADE;

-- ZIP CODE TABLE
CREATE TABLE zip_data (
    zip_code VARCHAR(10) PRIMARY KEY,
    city VARCHAR(100),
    county VARCHAR(100),
    state VARCHAR(50)
);

-- CONSUMPTION TABLE
CREATE TABLE consumption (
    id SERIAL PRIMARY KEY,
    zip_code VARCHAR(10),
    reading_date DATE,
    usage_kwh NUMERIC,
    FOREIGN KEY (zip_code) REFERENCES zip_data(zip_code)
);

-- REVENUE TABLE
CREATE TABLE revenue (
    id SERIAL PRIMARY KEY,
    zip_code VARCHAR(10),
    billing_month DATE,
    billed_amount NUMERIC,
    FOREIGN KEY (zip_code) REFERENCES zip_data(zip_code)
);

COPY zip_data(zip_code, city, county, state)
FROM '/Users/alexissegura/Documents/zip_data.csv'
WITH (FORMAT csv, HEADER, DELIMITER ',', ENCODING 'UTF8');

SELECT * FROM zip_data LIMIT 20

COPY consumption(zip_code, reading_date, usage_kwh)
FROM '/Users/alexissegura/Documents/energy_consumption.csv'
WITH (FORMAT csv, HEADER, DELIMITER ',', ENCODING 'UTF8');

SELECT * FROM consumption LIMIT 20

COPY revenue(zip_code, billing_month, billed_amount)
FROM '/Users/alexissegura/Documents/revenue_data.csv'
WITH (FORMAT csv, HEADER, DELIMITER ',', ENCODING 'UTF8');

SELECT * FROM revenue LIMIT 20

SELECT COUNT(*) FROM zip_data;
SELECT COUNT(*) FROM consumption;
SELECT COUNT(*) FROM revenue;

-- Exploring Energy Usage by ZipCode
SELECT 
    z.zip_code,
    z.city,
    z.county,
    SUM(c.usage_kwh) AS total_usage_kwh
FROM 
    consumption c
JOIN 
    zip_data z ON c.zip_code = z.zip_code
GROUP BY 
    z.zip_code, z.city, z.county
ORDER BY 
    total_usage_kwh DESC
LIMIT 10;
-- Rev by ZipCode
SELECT 
    z.zip_code,
    z.city,
    SUM(r.billed_amount) AS total_billed
FROM 
    revenue r
JOIN 
    zip_data z ON r.zip_code = z.zip_code
GROUP BY 
    z.zip_code, z.city
ORDER BY 
    total_billed DESC
LIMIT 10;
-- Usage vs Revenue Over Time 
SELECT 
    r.billing_month,
    SUM(c.usage_kwh) AS total_usage,
    SUM(r.billed_amount) AS total_revenue
FROM 
    revenue r
JOIN 
    consumption c 
    ON r.zip_code = c.zip_code 
    AND r.billing_month = c.reading_date
GROUP BY 
    r.billing_month
ORDER BY 
    r.billing_month;
-- Monthly Energy Usage
SELECT 
    DATE_TRUNC('month', reading_date) AS month,
    ROUND(SUM(usage_kwh), 2) AS total_kwh
FROM consumption
GROUP BY month
ORDER BY month;
-- Monthly Rev
SELECT 
    DATE_TRUNC('month', billing_month) AS month,
    ROUND(SUM(billed_amount), 2) AS total_revenue
FROM revenue
GROUP BY month
ORDER BY month;
-- Usage vs Rev by ZIP
SELECT 
    c.zip_code,
    ROUND(SUM(c.usage_kwh), 2) AS total_usage,
    ROUND(SUM(r.billed_amount), 2) AS total_revenue
FROM consumption c
JOIN revenue r ON c.zip_code = r.zip_code
GROUP BY c.zip_code
ORDER BY total_revenue DESC;
-- Peak Usage 
SELECT 
    zip_code,
    ROUND(SUM(usage_kwh), 2) AS total_usage_kwh
FROM consumption
GROUP BY zip_code
ORDER BY total_usage_kwh DESC
LIMIT 10;
-- ZIP metadata
SELECT 
    z.zip_code,
    z.city,
    z.county,
    z.state,
    ROUND(SUM(c.usage_kwh), 2) AS total_usage,
    ROUND(SUM(r.billed_amount), 2) AS total_revenue
FROM zip_data z
LEFT JOIN consumption c ON z.zip_code = c.zip_code
LEFT JOIN revenue r ON z.zip_code = r.zip_code
GROUP BY z.zip_code, z.city, z.county, z.state
ORDER BY total_revenue DESC;