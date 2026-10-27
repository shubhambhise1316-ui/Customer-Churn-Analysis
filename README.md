# Customer Churn Analysis

## Objective
Analyze customer account records to identify which customers are leaving, find the factors that drive churn, and recommend where the business should focus retention effort.

## Tools Used
- **SQL (PostgreSQL):** Table design, data cleaning, and churn aggregations by age, frequency, accounts and CLV.
- **Excel:** Data auditing with Power Query, flag columns, and PivotTables for quick validation.
- **Power BI:** Three-page interactive dashboard built with DAX measures (Total Customers, Churned, Churn Rate %, CLV at Risk).

## Key Analysis
- **Portfolio health:** Overall churn rate, customers lost, and customer lifetime value (CLV) at risk.
- **Behaviour segmentation:** Churn by transaction frequency and by CLV quartile.
- **Demographic breakdown:** Churn by age band and by annual salary band.
- **Product exposure:** How the number of accounts per customer relates to churn.
- **Risk matrix:** Age band by transaction frequency heatmap to find the highest-risk groups.

## Key Insights
- **High overall churn:** 60.5% of customers (101,878 of 168,521) have closed their accounts, with about 89.6 bn of CLV at risk.
- **Activity protects:** Churn falls from about 48% at 1 to 5 transactions to about 23% at 20+. Customers with no transaction data churn at 66%.
- **Value protects:** The lowest CLV quartile churns at 49%, the highest at 24%.
- **Multi-account risk:** Churn rises from 62% with one account to 75% with two and 81% with three or more.
- **Salary is not a driver:** Churn stays around 59 to 62% across salary bands.
- **Data quality issues fixed:** Removed 30,643 duplicate rows and invalid ages, and replaced a corrupted customer number with an index ID. 85% of CLV and frequency values are missing and were flagged, not filled.

## Dashboard Pages
| Page | Contents |
|---|---|
| Overview | KPI cards, Active vs Closed donut, churn by age band |
| Churn Drivers | Churn by frequency, accounts, CLV quartile, transaction history |
| Risk Segments | Age band by frequency heatmap, slicers |

![Overview](images/overview.png)
![Churn Drivers](images/churn_drivers.png)
![Risk Segments](images/risk_segments.png)

## Repository Structure
```
customer-churn-analysis/
├── README.md
├── data/        (raw and cleaned CSV)
├── sql/         (churn_analysis.sql)
├── excel/       (Churn_Analysis.xlsx)
├── powerbi/     (Customer_Churn_Dashboard.pbix)
└── images/      (dashboard screenshots)
```

## Recommendations
1. Run engagement campaigns for low-frequency customers.
2. Investigate why multi-account customers leave more.
3. Prioritize high-CLV customers whose activity is falling.
4. Do not target retention by salary.
5. Improve data collection for CLV and frequency.

## Conclusion
This project demonstrates an end-to-end data pipeline: taking raw, messy customer records through cleaning and database modeling, validating them in Excel, and delivering the findings in an interactive Power BI dashboard.

