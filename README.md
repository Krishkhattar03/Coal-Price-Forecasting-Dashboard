# Coal-Price-Forecasting-Dashboard

This project is an end-to-end data analytics and visualization solution designed to analyze and forecast global coal and energy prices using multiple tools: Python, SQL, Excel, and Power BI.
It combines statistical analysis, database querying, and interactive visualization to empower decision-makers in the energy sector.

# Coal-Price-Forecasting-Dashboard/
├── 📊 PowerBI_Dashboard.pbix
├── 📈 EDA_Scripts/
│   ├── eda https://1drv.ms/u/c/a7dac65cb49b81e7/EZ3gP2n0pkhFmn-WaQvMH8gBt0jOC16KUzTAt8V7eDKSSA?e=OMC3Eu
│   └── sql https://1drv.ms/u/c/a7dac65cb49b81e7/EcagsBY8B4pDhiiFcZKYqsMBgfxVKTVuY5WgjDla3OCB1Q?e=denhu5
├── 📂 Excel_Calculations/
│   └── Data https://1drv.ms/x/c/a7dac65cb49b81e7/EW-rDNehUw5LkxnQr63fMUoBO9busU4jgo3l4F9bq1vDtw?e=MKw2Ne


# Objective
To analyze historical coal and energy market price data, extract key statistical insights (mean, stddev, skewness, kurtosis), and present interactive visual dashboards to support forecasting, decision making, and trend analysis.

# Tools & Technologies Used
Tool	Purpose
| Tool         | Purpose                                           |
| ------------ | ------------------------------------------------- |
| **Python**   | EDA, statistical analysis (mean, std, skew, etc.) |
| **SQL**      | Advanced querying and aggregation in PostgreSQL   |
| **Excel**    | Data entry, quick functions, and validation       |
| **Power BI** | Visual dashboard with slicers, filters, KPIs      |

# Steps Followed
✅ Step 1: Python-based EDA
Imported Data set.xlsx

Used pandas, numpy, and scipy to compute:

Mean, Median, Mode

Standard Deviation, Variance, Range

Skewness & Kurtosis

Visualized distributions using matplotlib & seaborn

✅ Step 2: SQL-based Analysis
Loaded dataset into PostgreSQL

Used AVG(), STDDEV_POP(), SUM(POWER(...)) etc.

Computed skewness using centralized formulas for each price column

Joined summary stats dynamically using CTEs

✅ Step 3: Excel Analysis
Used built-in formulas:

=AVERAGE(), =STDEV.P(), =SKEW(), =KURT()

Verified consistency of results across tools

✅ Step 4: Power BI Dashboard
Created an interactive report:

Dropdown filters for price indices

Dynamic line charts showing trends over time

Summary cards for mean, stddev, skewness, kurtosis

Forecast trend lines based on historical price movement

# Dashboard Preview
 Conclusion
This project successfully demonstrates a complete analytical pipeline for coal and energy price forecasting using a combination of Python, SQL, Excel, and Power BI. The integration of these tools enabled robust data analysis, statistical profiling, and interactive visualization.

Key takeaways from the analysis include:

 Coal and oil price distributions show varying degrees of skewness and kurtosis, indicating that traditional forecasting models must be adapted to non-normal behavior in energy markets.

Using SQL and Python, we uncovered outliers and asymmetric trends in several energy benchmarks such as Coal_RB_5500, Price_WTI, and Price_LNG_Japan_Korea_Marker_PLATTS.

The Power BI dashboard offers a dynamic, filterable interface that enables stakeholders to explore historical trends, summary statistics, and distribution insights in real time.

Reproducibility across Python, SQL, and Excel confirms the reliability of our metrics like mean, standard deviation, skewness, and kurtosis.

This multi-tool approach provides a scalable foundation for future forecasting models, and can be extended with machine learning for deeper prediction capabilities.

Overall, the project highlights how a cross-functional analytical approach can deliver actionable insights into global energy pricing — essential for financial planning, trading strategies, and energy policy formulation.

