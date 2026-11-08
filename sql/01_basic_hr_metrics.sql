-- ==========================================
-- HR ANALYTICS PROJECT
-- Basic SQL Business Analysis
-- ==========================================

-- QUERY 1: Total number of employees
SELECT COUNT(*) AS Total_Employees
FROM employees;


-- QUERY 2: Employees who stayed vs. left
SELECT
    Attrition,
    COUNT(*) AS Employee_Count
FROM employees
GROUP BY Attrition;


-- QUERY 3: Overall attrition rate
SELECT
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS Employees_Left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees;


-- QUERY 4: Attrition by department
SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS Employees_Left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY Department
ORDER BY Attrition_Rate DESC;


-- QUERY 5: Average monthly income by attrition
SELECT
    Attrition,
    ROUND(AVG(MonthlyIncome), 2) AS Average_Monthly_Income
FROM employees
GROUP BY Attrition;


-- QUERY 6: Attrition by job role
SELECT
    JobRole,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS Employees_Left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY JobRole
ORDER BY Attrition_Rate DESC;


-- QUERY 7: Attrition by overtime
SELECT
    OverTime,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS Employees_Left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY OverTime
ORDER BY Attrition_Rate DESC;


-- QUERY 8: Attrition by age group
SELECT
    CASE
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        WHEN Age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '56+'
    END AS Age_Group,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS Employees_Left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY Age_Group
ORDER BY MIN(Age);