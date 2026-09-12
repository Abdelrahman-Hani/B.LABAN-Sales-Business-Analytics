```sql
-- =========================================================
-- Coffee Shop Sales & Business Analysis
-- SQL Server
-- =========================================================


-- =========================================================
-- 1. View the cleaned dataset
-- =========================================================
SELECT *
FROM dbo.datclean;


-- =========================================================
-- 2. Total Revenue
-- Measures the total revenue generated from all transactions
-- =========================================================
SELECT
    SUM(Total_Revenue) AS Total_Revenue
FROM dbo.datclean;


-- =========================================================
-- 3. Total Orders
-- Counts the total number of transactions/orders
-- =========================================================
SELECT
    COUNT(Transaction_ID) AS Total_Orders
FROM dbo.datclean;


-- =========================================================
-- 4. Total Customers
-- Counts unique customers
-- =========================================================
SELECT
    COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM dbo.datclean;


-- =========================================================
-- 5. Total Quantity Sold
-- Calculates the total number of products sold
-- =========================================================
SELECT
    SUM(Quantity) AS Total_Quantity
FROM dbo.datclean;


-- =========================================================
-- 6. Average Order Value (AOV)
-- Calculates the average revenue generated per order
-- =========================================================
SELECT
    SUM(Total_Revenue) / COUNT(DISTINCT Transaction_ID) AS AOV
FROM dbo.datclean;


-- =========================================================
-- 7. Average Discount
-- Calculates the average discount percentage
-- =========================================================
SELECT
    AVG(Discount_Rate) * 100 AS Average_Discount_Percent
FROM dbo.datclean;


-- =========================================================
-- 8. Average Delivery Time
-- Measures the average delivery time in minutes
-- =========================================================
SELECT
    AVG(Delivery_Time_Min) AS Average_Delivery_Time
FROM dbo.datclean;


-- =========================================================
-- 9. Average Store Rating
-- Calculates the overall average store rating
-- =========================================================
SELECT
    AVG(Store_Rating) AS Average_Store_Rating
FROM dbo.datclean;


-- =========================================================
-- 10. Average Delivery Distance
-- Calculates the average delivery distance in kilometers
-- =========================================================
SELECT
    AVG(Delivery_Distance_KM) AS Average_Delivery_Distance
FROM dbo.datclean;



-- =========================================================
-- SALES PERFORMANCE
-- =========================================================


-- =========================================================
-- 11. Revenue by Branch
-- Identifies the branches generating the highest revenue
-- =========================================================
SELECT
    Branch,
    SUM(Total_Revenue) AS Total_Revenue
FROM dbo.datclean
GROUP BY Branch
ORDER BY Total_Revenue DESC;


-- =========================================================
-- 12. Top 3 Products by Revenue
-- Identifies the best-performing products
-- =========================================================
SELECT TOP 3
    Product_Name,
    SUM(Total_Revenue) AS Total_Revenue
FROM dbo.datclean
GROUP BY Product_Name
ORDER BY Total_Revenue DESC;


-- =========================================================
-- 13. Top 3 Categories by Revenue
-- Identifies the highest-performing product categories
-- =========================================================
SELECT TOP 3
    Category,
    SUM(Total_Revenue) AS Total_Revenue
FROM dbo.datclean
GROUP BY Category
ORDER BY Total_Revenue DESC;


-- =========================================================
-- 14. Revenue by Region
-- Compares revenue performance across regions
-- =========================================================
SELECT
    Region,
    SUM(Total_Revenue) AS Total_Revenue
FROM dbo.datclean
GROUP BY Region
ORDER BY Total_Revenue DESC;


-- =========================================================
-- 15. Top Revenue-Generating Region
-- Identifies the region with the highest revenue
-- =========================================================
SELECT TOP 1
    Region,
    SUM(Total_Revenue) AS Total_Revenue
FROM dbo.datclean
GROUP BY Region
ORDER BY Total_Revenue DESC;


-- =========================================================
-- 16. Revenue by Month
-- Analyzes monthly revenue performance
-- =========================================================
SELECT
    Month,
    SUM(Total_Revenue) AS Total_Revenue
FROM dbo.datclean
GROUP BY Month
ORDER BY Month;


-- =========================================================
-- 17. Highest Revenue Month
-- Identifies the month with the highest revenue
-- =========================================================
SELECT TOP 1
    Month,
    SUM(Total_Revenue) AS Total_Revenue
FROM dbo.datclean
GROUP BY Month
ORDER BY Total_Revenue DESC;


-- =========================================================
-- 18. Revenue by Shift
-- Compares revenue across different time periods
-- =========================================================
SELECT
    Shift,
    SUM(Total_Revenue) AS Total_Revenue
FROM dbo.datclean
GROUP BY Shift
ORDER BY Total_Revenue DESC;


-- =========================================================
-- 19. Top 2 Shifts by Revenue
-- Identifies the strongest sales periods during the day
-- =========================================================
SELECT TOP 2
    Shift,
    SUM(Total_Revenue) AS Total_Revenue
FROM dbo.datclean
GROUP BY Shift
ORDER BY Total_Revenue DESC;


-- =========================================================
-- 20. Revenue by Order Source
-- Compares In-store and delivery platforms
-- =========================================================
SELECT
    Order_Source,
    SUM(Total_Revenue) AS Total_Revenue,
    COUNT(Transaction_ID) AS Total_Orders
FROM dbo.datclean
GROUP BY Order_Source
ORDER BY Total_Revenue DESC;


-- =========================================================
-- 21. Revenue by Size
-- Analyzes which product size generates the most revenue
-- =========================================================
SELECT
    Size,
    SUM(Total_Revenue) AS Total_Revenue,
    SUM(Quantity) AS Total_Quantity
FROM dbo.datclean
GROUP BY Size
ORDER BY Total_Revenue DESC;



-- =========================================================
-- CUSTOMER ANALYSIS
-- =========================================================


-- =========================================================
-- 22. Revenue by Membership Status
-- Compares revenue generated by different membership levels
-- =========================================================
SELECT
    Membership_Status,
    SUM(Total_Revenue) AS Total_Revenue
FROM dbo.datclean
GROUP BY Membership_Status
ORDER BY Total_Revenue DESC;


-- =========================================================
-- 23. Customers by Gender
-- Counts customers/transactions by gender
-- =========================================================
SELECT
    Customer_Gender,
    COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM dbo.datclean
GROUP BY Customer_Gender
ORDER BY Total_Customers DESC;


-- =========================================================
-- 24. Orders by Membership Status
-- Compares order volume across membership levels
-- =========================================================
SELECT
    Membership_Status,
    COUNT(Transaction_ID) AS Total_Orders
FROM dbo.datclean
GROUP BY Membership_Status
ORDER BY Total_Orders DESC;


-- =========================================================
-- 25. Revenue by Customer Gender
-- Compares revenue contribution by gender
-- =========================================================
SELECT
    Customer_Gender,
    SUM(Total_Revenue) AS Total_Revenue
FROM dbo.datclean
GROUP BY Customer_Gender
ORDER BY Total_Revenue DESC;



-- =========================================================
-- DELIVERY & OPERATIONS
-- =========================================================


-- =========================================================
-- 26. Average Delivery Time by Branch
-- Identifies branches with the longest delivery times
-- =========================================================
SELECT
    Branch,
    AVG(Delivery_Time_Min) AS Average_Delivery_Time
FROM dbo.datclean
GROUP BY Branch
ORDER BY Average_Delivery_Time DESC;


-- =========================================================
-- 27. Average Delivery Time by Order Source
-- Compares delivery performance across order sources
-- =========================================================
SELECT
    Order_Source,
    AVG(Delivery_Time_Min) AS Average_Delivery_Time
FROM dbo.datclean
GROUP BY Order_Source
ORDER BY Average_Delivery_Time DESC;


-- =========================================================
-- 28. Average Delivery Distance by Branch
-- Measures the average delivery distance for each branch
-- =========================================================
SELECT
    Branch,
    AVG(Delivery_Distance_KM) AS Average_Distance_KM
FROM dbo.datclean
GROUP BY Branch
ORDER BY Average_Distance_KM DESC;


-- =========================================================
-- 29. Delivery Distance vs Delivery Time Correlation
-- Measures the relationship between delivery distance and delivery time
-- =========================================================
SELECT
    (
        COUNT_BIG(*) * SUM(
            CAST(Delivery_Distance_KM AS DECIMAL(18,4)) *
            CAST(Delivery_Time_Min AS DECIMAL(18,4))
        )
        -
        SUM(CAST(Delivery_Distance_KM AS DECIMAL(18,4))) *
        SUM(CAST(Delivery_Time_Min AS DECIMAL(18,4)))
    )
    /
    NULLIF(
        (
            SQRT(
                COUNT_BIG(*) * SUM(
                    CAST(Delivery_Distance_KM AS DECIMAL(18,4)) *
                    CAST(Delivery_Distance_KM AS DECIMAL(18,4))
                )
                -
                POWER(
                    SUM(CAST(Delivery_Distance_KM AS DECIMAL(18,4))),
                    2
                )
            )
            *
            SQRT(
                COUNT_BIG(*) * SUM(
                    CAST(Delivery_Time_Min AS DECIMAL(18,4)) *
                    CAST(Delivery_Time_Min AS DECIMAL(18,4))
                )
                -
                POWER(
                    SUM(CAST(Delivery_Time_Min AS DECIMAL(18,4))),
                    2
                )
            )
        ),
        0
    ) AS Correlation
FROM dbo.datclean;



-- =========================================================
-- RATING ANALYSIS
-- =========================================================


-- =========================================================
-- 30. Top 5 Branches by Average Rating
-- Identifies the highest-rated branches
-- =========================================================
SELECT TOP 5
    Branch,
    AVG(Store_Rating) AS Average_Rating
FROM dbo.datclean
GROUP BY Branch
ORDER BY Average_Rating DESC;


-- =========================================================
-- 31. Lowest-Rated Branches
-- Identifies branches that may require operational improvement
-- =========================================================
SELECT TOP 5
    Branch,
    AVG(Store_Rating) AS Average_Rating
FROM dbo.datclean
GROUP BY Branch
ORDER BY Average_Rating ASC;



-- =========================================================
-- DISCOUNT ANALYSIS
-- =========================================================


-- =========================================================
-- 32. Average Discount by Category
-- Identifies categories receiving the highest discounts
-- =========================================================
SELECT
    Category,
    AVG(Discount_Rate) * 100 AS Average_Discount_Percent
FROM dbo.datclean
GROUP BY Category
ORDER BY Average_Discount_Percent DESC;


-- =========================================================
-- 33. Top 10 Products by Average Discount
-- Identifies products with the highest average discounts
-- =========================================================
SELECT TOP 10
    Product_Name,
    AVG(Discount_Rate) * 100 AS Average_Discount_Percent
FROM dbo.datclean
GROUP BY Product_Name
ORDER BY Average_Discount_Percent DESC;


-- =========================================================
-- 34. Top 10 Branches by Average Discount
-- Identifies branches offering the highest discounts
-- =========================================================
SELECT TOP 10
    Branch,
    AVG(Discount_Rate) * 100 AS Average_Discount_Percent
FROM dbo.datclean
GROUP BY Branch
ORDER BY Average_Discount_Percent DESC;


-- =========================================================
-- 35. Discount Group Analysis
-- Compares order volume and quantity across discount levels
-- =========================================================
SELECT
    Discount_Group,
    SUM(Quantity) AS Total_Quantity,
    AVG(Quantity) AS Average_Quantity,
    COUNT(Transaction_ID) AS Total_Orders
FROM dbo.datclean
GROUP BY Discount_Group
ORDER BY Total_Quantity DESC;


-- =========================================================
-- 36. Revenue by Discount Group
-- Evaluates the revenue contribution of each discount level
-- =========================================================
SELECT
    Discount_Group,
    SUM(Total_Revenue) AS Total_Revenue
FROM dbo.datclean
GROUP BY Discount_Group
ORDER BY Total_Revenue DESC;


-- =========================================================
-- 37. Discount Impact on AOV
-- Compares average order value across discount levels
-- =========================================================
SELECT
    Discount_Group,
    SUM(Total_Revenue) / COUNT(DISTINCT Transaction_ID) AS AOV,
    COUNT(Transaction_ID) AS Total_Orders,
    SUM(Quantity) AS Total_Quantity
FROM dbo.datclean
GROUP BY Discount_Group
ORDER BY AOV DESC;


-- =========================================================
-- 38. Average Discount by Membership
-- Compares discount levels received by membership groups
-- =========================================================
SELECT
    Membership_Status,
    AVG(Discount_Rate) * 100 AS Average_Discount_Percent
FROM dbo.datclean
GROUP BY Membership_Status
ORDER BY Average_Discount_Percent DESC;



-- =========================================================
-- WEEKEND & HOLIDAY ANALYSIS
-- =========================================================


-- =========================================================
-- 39. Weekend vs Weekday Revenue
-- Compares revenue generated on weekends and weekdays
-- =========================================================
SELECT
    Is_Weekend,
    SUM(Total_Revenue) AS Total_Revenue,
    COUNT(Transaction_ID) AS Total_Orders
FROM dbo.datclean
GROUP BY Is_Weekend
ORDER BY Total_Revenue DESC;


-- =========================================================
-- 40. Holiday vs Non-Holiday Revenue
-- Compares revenue generated on public holidays
-- =========================================================
SELECT
    Is_Public_Holiday,
    SUM(Total_Revenue) AS Total_Revenue,
    COUNT(Transaction_ID) AS Total_Orders
FROM dbo.datclean
GROUP BY Is_Public_Holiday
ORDER BY Total_Revenue DESC;



-- =========================================================
-- WEATHER ANALYSIS
-- =========================================================


-- =========================================================
-- 41. Revenue by Temperature Group
-- Analyzes revenue across different temperature conditions
-- =========================================================
SELECT
    Temperature_Group,
    SUM(Total_Revenue) AS Total_Revenue
FROM dbo.datclean
GROUP BY Temperature_Group
ORDER BY Total_Revenue DESC;


-- =========================================================
-- 42. Quantity Sold by Temperature Group
-- Measures sales volume under different temperatures
-- =========================================================
SELECT
    Temperature_Group,
    SUM(Quantity) AS Total_Quantity
FROM dbo.datclean
GROUP BY Temperature_Group
ORDER BY Total_Quantity DESC;


-- =========================================================
-- 43. Delivery Time by Temperature Group
-- Analyzes whether temperature is associated with delivery performance
-- =========================================================
SELECT
    Temperature_Group,
    AVG(Delivery_Time_Min) AS Average_Delivery_Time
FROM dbo.datclean
GROUP BY Temperature_Group
ORDER BY Average_Delivery_Time DESC;


-- =========================================================
-- 44. Average Revenue by Temperature
-- Compares average revenue per transaction at different temperatures
-- =========================================================
SELECT
    Temperature_Group,
    AVG(Total_Revenue) AS Average_Revenue_Per_Order
FROM dbo.datclean
GROUP BY Temperature_Group
ORDER BY Average_Revenue_Per_Order DESC;



-- =========================================================
-- ADDITIONAL BUSINESS ANALYSIS
-- =========================================================


-- =========================================================
-- 45. Revenue by Payment Method
-- Identifies the most valuable payment channels
-- =========================================================
SELECT
    Payment_Method,
    SUM(Total_Revenue) AS Total_Revenue,
    COUNT(Transaction_ID) AS Total_Orders
FROM dbo.datclean
GROUP BY Payment_Method
ORDER BY Total_Revenue DESC;


-- =========================================================
-- 46. Revenue by Customer Age Group
-- Analyzes customer value across age groups
-- =========================================================
SELECT
    CASE
        WHEN Customer_Age < 18 THEN 'Under 18'
        WHEN Customer_Age BETWEEN 18 AND 24 THEN '18-24'
        WHEN Customer_Age BETWEEN 25 AND 34 THEN '25-34'
        WHEN Customer_Age BETWEEN 35 AND 44 THEN '35-44'
        WHEN Customer_Age BETWEEN 45 AND 54 THEN '45-54'
        WHEN Customer_Age BETWEEN 55 AND 64 THEN '55-64'
        ELSE '65+'
    END AS Age_Group,

    SUM(Total_Revenue) AS Total_Revenue,
    COUNT(DISTINCT Customer_ID) AS Total_Customers

FROM dbo.datclean
GROUP BY
    CASE
        WHEN Customer_Age < 18 THEN 'Under 18'
        WHEN Customer_Age BETWEEN 18 AND 24 THEN '18-24'
        WHEN Customer_Age BETWEEN 25 AND 34 THEN '25-34'
        WHEN Customer_Age BETWEEN 35 AND 44 THEN '35-44'
        WHEN Customer_Age BETWEEN 45 AND 54 THEN '45-54'
        WHEN Customer_Age BETWEEN 55 AND 64 THEN '55-64'
        ELSE '65+'
    END

ORDER BY Total_Revenue DESC;


-- =========================================================
-- 47. Revenue by Year
-- Useful if the dataset contains multiple years
-- =========================================================
SELECT
    Year,
    SUM(Total_Revenue) AS Total_Revenue
FROM dbo.datclean
GROUP BY Year
ORDER BY Year;


-- =========================================================
-- 48. Revenue by Day of Week
-- Identifies the strongest days for sales
-- =========================================================
SELECT
    DATENAME(WEEKDAY, Date_Time) AS Day_Name,
    SUM(Total_Revenue) AS Total_Revenue,
    COUNT(Transaction_ID) AS Total_Orders
FROM dbo.datclean
GROUP BY DATENAME(WEEKDAY, Date_Time)
ORDER BY Total_Revenue DESC;

