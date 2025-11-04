### 🚀 Task 2: Data Visualization Insights

This project demonstrates visual data storytelling using Power BI based on the `Sample - Superstore.csv` dataset.

| **Objective** | **Tool** | **Key Metric Focus** |
| :--- | :--- | :--- |
| Find the biggest problem causing profit loss. | Power BI Desktop | Profit Margin (%) |

---

### 📊 Visualization Summary

We used the following charts to tell the story:

* **3 Card Visuals:** Show the final numbers for **Total Sales, Total Profit, and Total Orders**. (Profit card uses **Red/Green** for quick risk warning.)
* **Line Chart:** Shows the **Sales Trend** over time.
* **Map Visual:** Identifies problem **Regions** (where profit is low or negative).
* **Bar Chart:** Compares **Profit Margin %** by **Category** to find the least efficient product line.

---

### 💡 Core Business Findings (Actionable Insights)

Cross-filtering the dashboard reveals the core problem and solution:

1.  **🔴 Problem Spot:** The **Central Region** is the company's biggest financial drain, often showing a net **Loss (Negative Profit)** when filtered.
2.  **📉 Root Cause:** The **Furniture** category is the least efficient and the main cause of losses in the problem regions due to high discounts and/or costs.
3.  **✅ Proposal:** We must **immediately limit discounts** on **Furniture** in the **Central Region**. We should also increase investment in the high-profit **Technology** category for faster growth.

---

### ⚙️ Submission Details

* **Files Included:**
    * Visual Report (PDF/Screenshot)
    * `Sample - Superstore.csv`
    * `README.md` (this file)
* **DAX Measures:** Key calculations used were `Total Sales`, `Total Profit`, and `Profit Margin %`.
