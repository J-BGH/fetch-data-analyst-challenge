### Question 1: Top 5 brands by receipts scanned among users 21 and over

SELECT p.BRAND, COUNT(DISTINCT t.RECEIPT_ID) as receipt_count
FROM transactions t
JOIN users u ON t.USER_ID = u.ID
JOIN products p ON t.BARCODE = p.BARCODE
WHERE (CURRENT_DATE - u.BIRTH_DATE)/365.25 >= 21
GROUP BY p.BRAND
ORDER BY receipt_count DESC
LIMIT 5;


### Question 2: Top 5 brands by sales among users that have had their account for at least six months

SELECT p.BRAND, SUM(t.FINAL_SALE) as total_sales
FROM transactions t
JOIN users u ON t.USER_ID = u.ID
JOIN products p ON t.BARCODE = p.BARCODE
WHERE u.CREATED_DATE <= DATE_SUB(CURRENT_DATE, INTERVAL 6 MONTH)
GROUP BY p.BRAND
ORDER BY total_sales DESC
LIMIT 5;


### Question 3: Percentage of sales in the Health & Wellness category by generation

WITH health_wellness_sales AS (
  SELECT SUM(t.FINAL_SALE) as hw_sales
  FROM transactions t
  JOIN products p ON t.BARCODE = p.BARCODE
  WHERE p.CATEGORY_1 = 'Health & Wellness'
),
total_sales AS (
  SELECT SUM(t.FINAL_SALE) as total_sales
  FROM transactions t
)
SELECT (hw_sales / total_sales) * 100 as percentage
FROM health_wellness_sales, total_sales;
