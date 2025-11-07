# Superstore Data Analysis Report

## Overview
This project analyzes the Superstore dataset to explore patterns and relationships among variables. The analysis is divided into three stages: univariate analysis, bivariate analysis, and multivariate analysis. Each stage focuses on identifying trends, distributions, and correlations to gain actionable insights.

---

## Task 5: Univariate Analysis
Univariate analysis was conducted to understand the distribution and characteristics of individual variables.

- **Numeric Variables**: Histograms and descriptive statistics were used to examine distributions of variables such as `Sales`, `Profit`, and `Quantity`. Outliers and skewness were identified, providing context for further analyses.
- **Categorical Variables**: Frequency counts and bar charts were used to explore distributions for variables like `Category`, `Sub-Category`, `Region`, and `Segment`. This highlighted the most common product categories, regions with high order volumes, and customer segments.

**Key Insights:**
- The majority of sales occur in the `Office Supplies` and `Technology` categories.
- Certain regions, such as `West` and `Central`, show higher order volumes.
- Skewness in numeric variables indicates that a few large orders contribute disproportionately to total sales and profit.

---

## Task 6: Bivariate Analysis
Bivariate analysis was performed to examine relationships between pairs of variables, using scatter plots, boxplots, cross-tabulations, and correlation measures.

- **Numeric vs Numeric**: Scatter plots and Pearson correlation coefficients were calculated between `Sales` and `Profit`. A moderate positive correlation was observed, indicating that higher sales tend to result in higher profits, but variability exists.
- **Categorical vs Numeric**: Boxplots were used to compare `Sales` and `Profit` across categories and regions. Results showed that some categories and regions consistently outperform others in terms of profitability.
- **Categorical vs Categorical**: Cross-tabulations and chi-square tests were conducted between variables such as `Category` and `Region`. Significant associations were found, suggesting that product category preferences vary by region.

**Key Insights:**
- `Technology` products generally generate higher profits per order than `Office Supplies`.
- The `East` region shows lower average profits despite moderate sales volume.
- Customer behavior varies by segment and region, which is crucial for targeted marketing and inventory management.

---

## Multivariate Analysis (Planned)
The next stage involves multivariate analysis to explore the interactions among three or more variables simultaneously. Techniques will include:

- **Pairplots and Correlation Matrices** to identify complex relationships among numeric variables.
- **Grouped Aggregations** to examine how categorical variables jointly affect sales and profit.
- **Regression or Predictive Modeling** to quantify the impact of multiple factors on profitability.

**Expected Outcomes:**
- Identification of high-value customer segments and product-region combinations.
- Insights into the joint effects of category, segment, and region on sales and profit.
- Foundation for predictive analytics and business strategy recommendations.

---

## Conclusion
Through univariate and bivariate analyses, initial patterns in sales, profit, and customer behavior have been identified. These analyses provide a solid foundation for multivariate modeling and strategic business decisions, including targeted marketing, inventory optimization, and revenue growth strategies.

