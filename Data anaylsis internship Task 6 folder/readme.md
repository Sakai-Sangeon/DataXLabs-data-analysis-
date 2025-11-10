## 📄 Task 6: Sales Trend Analysis Using Aggregations

### 🎯 Objective

The main goal was to analyze sales data to determine the **Monthly Total Revenue** and **Total Order Volume**, utilizing SQL aggregation functions to understand time trends.

### 🛠️ Tools and Dataset

| Category | Details | Note |
| :--- | :--- | :--- |
| **Analysis Environment** | **SQLite** | Selected as the SQL engine for the task. |
| **Dataset Used** | `online_sales_dataset(new).csv` | Table name: `orders` (Used instead of the original specification to complete the task). |

### 💡 Core Analysis Logic

The query was structured to handle the new dataset's column names and calculate revenue as a derived metric.

1.  **Time Grouping:** The `InvoiceDate` column was used with the `strftime('%Y-%m', InvoiceDate)` function to extract and group data by Year-Month.
2.  **Revenue Calculation:** Revenue was calculated by summing the product of `UnitPrice` and `Quantity`.
    * `SUM(CAST(UnitPrice AS REAL) * CAST(Quantity AS REAL))`
3.  **Order Volume:** The count of **distinct** `InvoiceNo` was used to calculate the unique number of orders.
    * `COUNT(DISTINCT InvoiceNo)`
4.  **Sorting:** Results were sorted by the analysis month.

### 📝 Final SQL Script

The final SQL query executed to complete Task 6. (To be submitted as a `.sql` file.)

```sql
SELECT
    strftime('%Y-%m', InvoiceDate) AS analysis_month,
    SUM(CAST(UnitPrice AS REAL) * CAST(Quantity AS REAL)) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS order_volume
FROM
    orders
GROUP BY
    analysis_month
ORDER BY
    analysis_month ASC;
