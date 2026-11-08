# HR Analytics: Employee Attrition & Retention Analysis

## Project Overview

This project analyzes employee attrition patterns using the IBM HR Analytics Employee Attrition & Performance dataset.

The goal is to identify employee groups and workplace factors associated with attrition and present the findings through data analysis, SQL queries, and an interactive Power BI dashboard.

## Business Problem

Employee attrition can create additional recruitment, onboarding, and training costs. Organizations need to understand where attrition is higher so they can investigate potential retention challenges.

This project explores employee attrition across demographic groups, departments, job roles, tenure, overtime, job satisfaction, and monthly income.

## Project Objectives

- Calculate the overall employee attrition and retention rates.
- Analyze attrition across departments and job roles.
- Examine attrition patterns by age and company tenure.
- Explore associations between attrition, overtime, job satisfaction, and monthly income.
- Build an interactive Power BI dashboard.
- Develop data-driven HR recommendations.

## Dataset

**Dataset:** IBM HR Analytics Employee Attrition & Performance

**Source:** https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset

The original dataset contains 1,470 employee records and 35 columns.

After data preparation, three constant columns were removed, resulting in a cleaned dataset with 1,470 records and 32 columns.

The dataset is simulated and is used for learning and portfolio purposes.

## Tools & Technologies

- **Python:** Data cleaning and exploratory data analysis
- **Pandas & NumPy:** Data manipulation
- **Matplotlib / Seaborn:** Data visualization, where used
- **SQLite:** Database storage
- **SQL:** Business analysis and querying
- **Power BI:** Interactive dashboard development
- **Git & GitHub:** Version control and project publication

## Project Workflow

1. Dataset preparation and data quality checks
2. Exploratory data analysis using Python
3. Demographic and job role analysis
4. SQL business analysis using SQLite
5. Power BI dashboard development
6. Business report and recommendations
7. GitHub publication

## Key Findings

- **Total employees:** 1,470
- **Employees who left:** 237
- **Employees who stayed:** 1,233
- **Overall attrition rate:** 16.12%
- **Retention rate:** 83.88%

### Main Insights

1. Employees with 0–1 years of tenure had the highest tenure-group attrition rate at **34.88%**.
2. Sales Representatives had the highest job-role attrition rate at **39.76%**.
3. Employees working overtime had an attrition rate of **30.53%**, compared with **10.44%** for employees not working overtime.
4. The Sales department had the highest department attrition rate at **20.63%**.
5. Average monthly income was **6,832.74** among employees who stayed and **4,787.09** among employees who left.

These findings describe associations in the dataset and do not establish causation.

## Power BI Dashboard

The interactive dashboard explores employee attrition through key performance indicators, charts, and filters.

### Dashboard Screenshots

![HR Dashboard Page 1](images/Attrition%20Analysis-1.png)

![HR Dashboard Page 2](images/Attrition%20Analysis-2.png)

## Recommendations

Based on the analysis, the following actions could be considered for further HR investigation:

- Strengthen onboarding and support for employees during their first year.
- Review overtime patterns and workload distribution.
- Investigate retention challenges among Sales Representatives.
- Review compensation across comparable roles and experience levels.
- Monitor employee satisfaction and attrition trends regularly.

These recommendations should be validated using organization-specific data before implementation.

## Project Files

- `data/` – Raw and processed datasets
- `notebooks/` – Python analysis notebooks
- `sql/` – SQL queries and SQLite database
- `dashboard/` – Power BI dashboard
- `images/` – Dashboard screenshots
- `report/` – Business analysis report

## Limitations

The dataset is simulated and may not represent a real organization's workforce. The analysis is descriptive and does not prove that any factor causes employee attrition. Some employee groups have relatively small sample sizes, which should be considered when interpreting their attrition rates.

## Conclusion

This project demonstrates an end-to-end HR analytics workflow, from data preparation and exploratory analysis to SQL querying, dashboard development, and business recommendations. It highlights employee groups with comparatively higher attrition rates and provides a basis for further investigation into employee retention.

---

**Created as a Business Analyst portfolio project.**