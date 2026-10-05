-- HR Analytics – Practice Project
-- Learning / Practice Project (not professional work experience)
-- Table: Merged_HR_Analytics

-- KPI 1: Overall Attrition Rate
SELECT ROUND(SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),2) AS Attrition_Rate
FROM Merged_HR_Analytics;

-- KPI 2: Average Hourly Rate of Male Research Scientists
SELECT ROUND(AVG(HourlyRate),2) AS Avg_Hourly_Rate
FROM Merged_HR_Analytics
WHERE Gender='Male' AND JobRole='Research Scientist';

-- KPI 3: Attrition Rate by Department
SELECT Department,
ROUND(SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),2) AS Attrition_Rate
FROM Merged_HR_Analytics
GROUP BY Department ORDER BY Attrition_Rate DESC;

-- KPI 4: Attrition Rate by Overtime
SELECT OverTime,
ROUND(SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),2) AS Attrition_Rate
FROM Merged_HR_Analytics
GROUP BY OverTime ORDER BY Attrition_Rate DESC;

-- KPI 5: Average Monthly Income by Department
SELECT Department, ROUND(AVG(MonthlyIncome),2) AS Avg_Monthly_Income
FROM Merged_HR_Analytics
GROUP BY Department ORDER BY Avg_Monthly_Income DESC;
