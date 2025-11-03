# Data Analyst Internship - Task 1: Data Cleaning and Preprocessing

## 🎯 Objective
The objective of this task was to clean and prepare the raw "Customer Personality Analysis" dataset for subsequent analysis and modeling, ensuring data quality and consistency.

## 🛠️ Tools Used
Microsoft Excel was used for all data cleaning and preprocessing operations.

## 🧹 Data Cleaning and Changes Summary

The following steps were performed on the `marketing_campaign.csv` dataset:

1.  **Data Separation:** The raw data, which was improperly contained in a single column, was successfully separated into individual columns using the "Text to Columns" feature based on the TAB delimiter.

2.  **Missing Value Imputation:**
    * The **`Income`** column was identified as having **24 missing values (NA)**.
    * These missing values were imputed by filling them with the **mean (average) value** of the existing non-missing incomes.

3.  **Duplicate Removal:**
    * The entire dataset was checked for duplicate rows. **No duplicate records** were found.

4.  **Data Type Conversion:**
    * The **`Dt_Customer`** (Customer Enrollment Date) column, which was in text format, was converted into a standard **Date format** (e.g., DD-MM-YYYY) for time-series analysis.

5.  **Categorical Standardization (`Marital_Status`):**
    * The marital status categories were standardized to ensure analytical consistency:
        * `Together` was grouped into **`Married`** (to represent a partnered status).
        * `Alone` was grouped into **`Single`** (as the closest relevant legal status).
        * `YOLO` and `Absurd` were grouped into **`Other`** (to clean up rare and irrelevant categories).

## ✨ Feature Engineering (Derived Variables)

Two essential new features were created to enhance the analysis:

1.  **`Age`:** Calculated by subtracting `Year_Birth` from the current year (2025).
    * *Formula used:* `2025 - [Year_Birth]`
2.  **`Tenure`:** Calculated as the number of days the customer has been enrolled with the company.
    * *Formula used:* `Current Date (2025-11-04) - [Dt_Customer]`