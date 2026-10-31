Credit Risk Analysis and Dashboard
Project Overview

This project analyzes consumer loan data to identify key factors influencing loan defaults. The dataset contains borrower demographics, financial information, loan characteristics, and credit history. The analysis was performed using MySQL for data cleaning and exploratory analysis, followed by Power BI for interactive dashboard development.

Objectives
Clean and prepare loan data for analysis.
Identify borrower segments with higher default risk.
Analyze the impact of loan characteristics on defaults.
Build an interactive dashboard to visualize credit risk patterns.
Generate actionable insights for lending decisions.

Data Cleaning

The following data quality checks were performed:

Handled missing values and NULLs.
Verified data types for all columns.
Checked for duplicate records.
Validated numerical fields for inconsistencies.
Standardized categorical values.

SQL Analysis
1. Loan Intent Analysis
<img width="576" height="146" alt="intent default" src="https://github.com/user-attachments/assets/01197ef3-69f3-4225-8558-4fb55d8bb2ad" />

Analyzed default rates across loan purposes:

Education
Medical
Personal
Venture
Home Improvement
Debt Consolidation
2. Loan Grade Analysis
<img width="583" height="169" alt="grade default" src="https://github.com/user-attachments/assets/fd85b0e9-cfe7-4bc6-941e-f72a82d17bce" />

Examined default patterns across credit grades to determine risk concentration.

3. Previous Default History Analysis
<img width="487" height="81" alt="history def" src="https://github.com/user-attachments/assets/3f4d751e-d8f5-49c2-adce-4e12bac47c75" />

Compared:

Borrowers with previous defaults
First-time defaulters

To evaluate whether historical default behavior predicts future risk.

4. Home Ownership Analysis

Studied default behavior among:

Renters
Mortgage holders
Homeowners
5. Interest Rate Analysis

Analyzed the relationship between loan interest rates and default probability.

6. Safe customer group
Analyzed which customer category has not defaulted on their loan

Power BI Dashboard
Page 1: Portfolio Overview
<img width="660" height="377" alt="Screenshot 2026-10-31 195512" src="https://github.com/user-attachments/assets/37cf675f-cf09-4def-bd1b-30330d27e28c" />

KPIs:

Total Borrowers
Default Rate (%)
Average Loan Amount
Average Interest Rate

Visualizations:

Default Rate by Loan Intent
Default Rate by Loan Grade
Previous Defaulters vs New Borrowers

Page 2: Borrower Profile

Visualizations:

Default Rate by Home Ownership
Default Rate by Age Group
Default Rate by Employment Length
Default Rate by Income Group

Page 3: Risk Drivers

Visualizations:

Loan Burden Analysis (Loan % of Income)
Interest Rate vs Default Rate
Income vs Loan Amount Scatter Plot
Key Risk Insights

Page 4 : Safe Customer Segment

Key Findings
Previous defaulters exhibit significantly higher default risk.
Certain loan purposes show consistently higher default rates.
Borrowers with higher loan burdens are more likely to default.
Loan grade is a strong predictor of credit risk.
Interest rates tend to increase with borrower risk levels.

Tools Used
MySQL - Data Cleaning & Analysis
Power BI - Dashboard Development
Excel/CSV - Data Source

Skills Demonstrated
SQL Query Writing
Data Cleaning
Exploratory Data Analysis (EDA)
Credit Risk Analysis
Business Intelligence
Power BI Dashboard Design
Data Visualization
