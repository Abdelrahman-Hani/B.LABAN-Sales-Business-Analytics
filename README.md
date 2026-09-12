# 🥛 B.LABAN Sales & Business Analytics

## 📌 Project Overview

This project presents an end-to-end **Sales & Business Analytics** solution for **B.LABAN**, using **Python, SQL Server, and Power BI**.

The goal of the project is to analyze sales performance, customer behavior, product performance, branch performance, discounts, delivery operations, and external business factors to generate **actionable business insights and recommendations**.

---

## 🎯 Business Objectives

* Analyze overall sales and revenue performance.
* Identify the highest-performing products and categories.
* Evaluate branch and regional performance.
* Understand customer behavior and membership performance.
* Analyze the impact of discounts on sales.
* Evaluate delivery performance across branches and order sources.
* Analyze weekend and public holiday sales.
* Investigate the relationship between weather conditions and revenue.
* Identify business opportunities and areas requiring improvement.
* Translate analytical findings into actionable business decisions.

---

## 🛠️ Tools & Technologies

* **Python**

  * Pandas
  * NumPy
  * Matplotlib
  * Seaborn

* **SQL Server**

  * Aggregations
  * GROUP BY
  * ORDER BY
  * TOP
  * DISTINCT
  * CASE statements
  * Business analysis queries
  * Correlation analysis

* **Power BI**

  * Data visualization
  * KPI Cards
  * Bar Charts
  * Pie Charts
  * Treemap
  * Slicers
  * Interactive dashboards

---

## 📂 Project Workflow

### 1️⃣ Python – Data Cleaning & Exploration

The dataset was loaded and cleaned using Python.

Main cleaning steps included:

* Checking dataset structure and data types.
* Detecting duplicate records.
* Detecting missing values.
* Handling missing categorical values.
* Handling missing numerical values using median imputation.
* Converting `Date_Time` to datetime format.
* Detecting potential outliers using the IQR method.
* Creating analytical features.

### Feature Engineering

Additional features were created to support the analysis:

* `Year`
* `Month`
* `Day`
* `Shift`
* `Discount_Group`
* `Temperature_Group`
* `Total_Revenue`

---

# 📊 Key KPIs

| KPI                       |          Result |
| ------------------------- | --------------: |
| Total Revenue             |       **3.11M** |
| Total Quantity Sold       |         **18K** |
| Total Transactions        |          **3K** |
| Total Customers           |          **3K** |
| Average Customer Age      | **43.88 Years** |
| Average Delivery Time     |    **64.1 Min** |
| Average Delivery Distance |      **7.7 KM** |
| Total Tax Collected       |     **282.27K** |

---

# 📈 Sales Analysis

## Revenue by Category

The highest-performing category was:

1. **Traditional** – 1.13M
2. **Modern** – 0.93M
3. **Signature** – 0.68M
4. **Ice Cream** – 0.37M

### Insight

Traditional products generated the highest revenue contribution.

### Business Decision

Increase investment in Traditional products while monitoring inventory levels and profitability to maintain their strong performance.

---

## Revenue by Region

| Region        | Revenue |  Share |
| ------------- | ------: | -----: |
| Greater Cairo |   1.30M |  41.7% |
| Delta         |   0.79M | 25.42% |
| UAE           |   0.46M | 14.79% |
| Alexandria    |   0.29M |  9.31% |
| KSA           |   0.27M |  8.70% |

### Business Decision

Greater Cairo represents the strongest revenue region. Expansion opportunities should be evaluated based on demand, profitability, customer density, and branch capacity before opening new locations.

---

# 🏪 Branch Performance

### Top Performing Branches

1. Cairo-Nasr City – **0.68M**
2. Dubai-Marina – **0.46M**
3. Tanta-Saeed – **0.40M**
4. Mansoura-Mashaya – **0.39M**
5. Cairo-Zamalek – **0.32M**

### Business Decision

Cairo-Nasr City achieved the highest revenue among branches. The current performance should be maintained while providing appropriate operational and marketing support to capitalize on the strong demand.

---

# 🍮 Product Performance

### Top Products

1. Qishtota Nutella – **0.55M**
2. Rice Pudding Oven – **0.41M**
3. Super B.Laban – **0.40M**
4. Rice Pudding Nuts – **0.39M**
5. Qishtota Lotus – **0.38M**
6. Ice Cream Mango – **0.37M**
7. Om Ali Cream – **0.33M**
8. Sweet Koshary Mix – **0.28M**

### Business Decision

Sweet Koshary Mix showed relatively lower revenue performance. Increasing marketing exposure and targeted promotions should be considered before making any pricing changes.

---

# ⏰ Time-Based Analysis

## Revenue by Month

| Month    | Revenue |
| -------- | ------: |
| January  |   1.03M |
| March    |   0.94M |
| February |   0.85M |
| April    |   0.29M |

### Insight

April experienced a significant decline in revenue compared with the previous months.

### Business Decision

Investigate the causes of the April decline by analyzing weather conditions, holidays, branches, products, and order sources before taking corrective action.

---

## Revenue by Shift

| Shift      | Revenue |  Share |
| ---------- | ------: | -----: |
| Morning    |   1.13M | 36.28% |
| Afternoon  |   0.84M | 27.06% |
| Evening    |   0.60M | 19.29% |
| Late Night |   0.54M | 17.50% |

### Business Decision

Staffing and operational resources should be aligned with demand across shifts, with additional capacity during peak periods.

---

# 👥 Customer Analysis

## Membership Performance

| Membership | Transactions | Revenue |
| ---------- | -----------: | ------: |
| Unknown    |        1,010 |   1.07M |
| Gold       |          655 |   0.77M |
| Silver     |          680 |   0.65M |
| Bronze     |          655 |   0.61M |

### Key Insight

Unknown membership records account for approximately **34.4% of total revenue**.

### Business Decision

Improve customer identification and membership data collection during checkout to reduce Unknown records and enable better customer segmentation and targeted marketing.

---

## Customer Gender

| Gender | Customers |
| ------ | --------: |
| Female |     1,688 |
| Male   |     1,272 |

Female customers represented the larger share of identified customers.

---

# 🚚 Operations Analysis

## Delivery KPIs

* Average Delivery Time: **64.1 minutes**
* Average Delivery Distance: **7.7 KM**

### Delivery Time by Branch

* Cairo-Zamalek – **66.8 min**
* Riyadh-Olaya – **65.3 min**
* Alex-Stanly – **64.8 min**
* Mansoura-Mashaya – **64.0 min**
* Giza-Zayed – **63.9 min**
* Dubai-Marina – **63.6 min**
* Cairo-Nasr City – **62.4 min**
* Tanta-Saeed – **62.3 min**

### Business Decision

Cairo-Zamalek has the longest average delivery time. Further analysis should determine whether delivery delays affect customer ratings or revenue before considering changes to delivery providers.

---

# ⭐ Store Rating Analysis

### Highest-Rated Branches

1. Cairo-Zamalek – **3.08**
2. Giza-Zayed – **2.98**
3. Riyadh-Olaya – **2.97**
4. Dubai-Marina – **2.96**
5. Mansoura-Mashaya – **2.92**

### Lowest-Rated Branch

**Tanta-Saeed – 2.83**

### Business Decision

The lower ratings of branches such as Alex-Stanly and Tanta-Saeed should be investigated by analyzing delivery time, order source, product performance, and customer experience.

---

# 💰 Discount Analysis

Cairo-Nasr City recorded the highest average discount rate among branches.

### Business Question

Does the higher discount rate contribute to higher order volume and revenue?

### Business Decision

Analyze the relationship between discounts, orders, quantity, AOV, revenue, and profitability before increasing or expanding discount campaigns.

> **Correlation does not necessarily imply causation.**

---

# 🌡️ Business Factors

## Weekend vs Weekday

| Day Type | Revenue |
| -------- | ------: |
| Weekday  |   1.89M |
| Weekend  |   1.22M |

Weekdays generated higher total revenue.

---

## Public Holidays

| Day Type        | Revenue |
| --------------- | ------: |
| Normal Days     |   2.90M |
| Public Holidays |   0.21M |

Normal days generated significantly higher revenue than public holidays.

---

## Temperature Analysis

Revenue varied across different temperature levels between approximately **15°C and 45°C**, with several noticeable revenue peaks.

### Business Decision

Further analysis should evaluate whether temperature-related revenue patterns are consistent across months, branches, and order sources before using weather conditions for operational or marketing planning.

---

# 💡 Key Business Recommendations

Based on the analysis, the main recommendations are:

1. **Increase investment in high-performing Traditional products.**
2. **Maintain and support the strong performance of Cairo-Nasr City.**
3. **Evaluate expansion opportunities in Greater Cairo.**
4. **Investigate the reasons behind Riyadh's lower revenue before launching discounts.**
5. **Improve marketing exposure for Sweet Koshary Mix.**
6. **Optimize staffing according to demand across shifts.**
7. **Investigate the significant revenue decline in April.**
8. **Improve membership and customer data collection.**
9. **Investigate the impact of delivery time on customer satisfaction.**
10. **Analyze the causes of low ratings in underperforming branches.**
11. **Improve the Mobile App channel based on order volume and AOV analysis.**
12. **Evaluate whether discounts are actually driving additional sales.**
13. **Study weather-related sales patterns for future planning.**

---

# 📊 Dashboard

The Power BI dashboard provides an interactive view of:

* Revenue & Sales KPIs
* Category Performance
* Product Performance
* Regional & Branch Performance
* Customer Analysis
* Membership Analysis
* Delivery Performance
* Store Ratings
* Discount Analysis
* Weekend & Holiday Performance
* Weather & Business Factors

---

# 🔄 End-to-End Process

```text
Raw Dataset
     ↓
Python
Data Cleaning & Feature Engineering
     ↓
Clean Dataset
     ↓
SQL Server
Business Analysis
     ↓
Power BI
Interactive Dashboard
     ↓
Insights
     ↓
Business Decisions
```

---

# 📁 Project Structure

```text
B-LABAN-Sales-Business-Analytics/
│
├── data/
│   └── final_dataset.csv
│
├── python/
│   └── data_cleaning_and_eda.ipynb
│
├── sql/
│   └── business_analysis.sql
│
├── powerbi/
│   └── B_LABAN_Dashboard.pbix
│
├── images/
│   └── dashboard.png
│
└── README.md
```

---

# 👨‍💻 Author

**Abdelrahman Hani**

Data Analyst | Python | SQL | Power BI

---

## ⭐ Project Summary

This project demonstrates an end-to-end **Data Analytics workflow**, transforming raw transactional data into cleaned data, analytical insights, interactive dashboards, and actionable business recommendations.

**Tools:** Python • SQL Server • Power BI
