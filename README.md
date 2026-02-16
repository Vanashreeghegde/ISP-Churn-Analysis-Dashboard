# 📊 ISP Churn Analysis Dashboard

## 🚀 Project Overview

Customer churn significantly impacts revenue and long-term sustainability for Internet Service Providers (ISPs).  

This project analyzes customer churn behavior by evaluating:

- 📡 Network Performance (Latency & Packet Loss)
- 📦 Plan Type
- ⏳ Customer Tenure
- 🌍 Area/Region

The goal is to identify high-risk customer segments and provide actionable insights to reduce churn and improve service quality.

---

## 🎯 Business Problem

The ISP company is experiencing high customer churn. Management wants to understand:

- Are network performance issues causing customers to leave?
- Which areas have the highest churn?
- Does customer tenure influence churn behavior?
- Which plan types are associated with higher churn?
- What customer segments require immediate retention action?


## 🛠️ Tech Stack

- **Python** → Data Cleaning & Validation  
- **SQL Server** → Business Querying & Segmentation (CTE, Window Functions)  
- **Power BI** → Interactive Dashboard & KPI Modeling (DAX)

## 📂 Project Workflow

### 1️⃣ Data Preparation (Python)

- Removed irrelevant columns
- Converted `churn_flag` to integer
- Validated missing values
- Uploaded cleaned dataset to SQL Server

### 2️⃣ Business Analysis (SQL)

Key business questions answered:

- Overall churn rate
- Area-wise churn rate
- Plan-wise churn rate
- Tenure-based churn segmentation
- High-risk customer identification
- Area risk ranking using CTE & Window Functions

### 3️⃣ Power BI Dashboard (DAX & Visualization)

Key DAX Measures Created:

- **Churn Rate %**
- **Total Customers**
- **High-Risk Customers**
- **Area Risk Ranking**

Interactive slicers added for:
- Area
- Plan Type
- Tenure Group

Dashboard allows dynamic filtering and real-time KPI updates.

---

## 📈 Key Insights

- Customers experiencing high latency show significantly higher churn.
- Early-tenure customers are more likely to churn.
- Certain regions combine high latency and high churn — indicating infrastructure issues.
- Some plan types show above-average churn rates, suggesting pricing or value concerns.

---

## 📊 Dashboard Preview

![ISP Churn Dashboard](dashboard.png)


## 💡 Business Recommendations

1. Upgrade infrastructure in high-risk regions.
2. Launch targeted retention campaigns for early-tenure customers.
3. Offer proactive service support to high-latency users.
4. Reevaluate pricing strategies for high-churn plan types.
5. Implement predictive churn modeling for proactive intervention.

---

## 📌 KPIs Tracked

- Overall Churn Rate
- Total Customers
- Total Churned Customers
- High-Risk Customers
- Area Risk Ranking

---

## 🧠 Skills Demonstrated

- Data Cleaning & Preprocessing
- SQL Aggregation & CTE Usage
- Window Functions (RANK)
- Business Segmentation Logic
- DAX & Interactive KPI Modeling
- Analytical Storytelling

## 🏁 Conclusion

This project demonstrates end-to-end churn analysis using Python, SQL, and Power BI to deliver actionable business insights and support data-driven decision making.
