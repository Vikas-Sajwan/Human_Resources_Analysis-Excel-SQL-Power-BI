-- HR-ANALYTICS --


SELECT 
    *
FROM
    hr_analysis;
    

-- Q1.  What is the overall attrition rate?

SELECT 
    ROUND(SUM(CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END) * 100.0 / COUNT(*),
            2) AS AttritionRate
FROM
    hr_analysis;
    

-- Q2.  Attrition rate by department?

SELECT 
    Department,
    ROUND(SUM(CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END) * 100.0 / COUNT(*),
            2) AS AttritionRate
FROM
    hr_analysis
GROUP BY Department;


-- Q3. Attrition by gender.

SELECT 
    Gender,
    COUNT(*) AS TotalEmployees,
    SUM(CASE
        WHEN Attrition = 'Yes' THEN 1
        ELSE 0
    END) AS AttritionCount
FROM
    hr_analysis
GROUP BY Gender;


-- Q4. Average income by Job Role.

SELECT 
    JobRole, AVG(MonthlyIncome) AS AvgIncome
FROM
    hr_analysis
GROUP BY JobRole;


-- Q5. Top 5 departments with highest attrition rate.

SELECT 
    Department,
    ROUND(SUM(CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END) * 100.0 / COUNT(*),
            2) AS AttritionRate
FROM
    hr_analysis
GROUP BY Department
ORDER BY AttritionRate DESC
LIMIT 5;


-- Q6. Performance rating vs monthly income.

SELECT 
    PerformanceRating, AVG(MonthlyIncome) AS AvgIncome
FROM
    hr_analysis
GROUP BY PerformanceRating;


-- Q7. Attrition by age group.

SELECT 
    AgeGroup,
    COUNT(*) AS Total,
    SUM(CASE
        WHEN Attrition = 'Yes' THEN 1
        ELSE 0
    END) AS AttritionCount
FROM
    hr_analysis
GROUP BY AgeGroup;


-- Q8. Average job satisfaction by department.

SELECT 
    Department, AVG(JobSatisfaction) AS AvgSatisfaction
FROM
    hr_analysis
GROUP BY Department;


-- Q9. Impact of overtime on attrition.

SELECT 
    OverTime,
    COUNT(*) AS Total,
    SUM(CASE
        WHEN Attrition = 'Yes' THEN 1
        ELSE 0
    END) AS AttritionCount
FROM
    hr_analysis
GROUP BY OverTime;


-- Q10. Average salary hike by department. 

SELECT 
    Department, AVG(PercentSalaryHike) AS AvgHike
FROM
    hr_analysis
GROUP BY Department;


-- Q11. Job Involvement vs Performance Rating. 

SELECT 
    JobInvolvement, AVG(PerformanceRating) AS AvgPerformance
FROM
    hr_analysis
GROUP BY JobInvolvement;


-- Q12.  Salary slab distribution. 

SELECT 
    SalarySlab, COUNT(*) AS Count
FROM
    hr_analysis
GROUP BY SalarySlab;


--  Q13. Job satisfaction vs Years at company. 

SELECT 
    JobSatisfaction, AVG(YearsAtCompany) AS AvgYears
FROM
    hr_analysis
GROUP BY JobSatisfaction;


-- Q14. Training frequency vs Performance Rating. 

SELECT 
    TrainingTimesLastYear,
    AVG(PerformanceRating) AS AvgPerformance
FROM
    hr_analysis
GROUP BY TrainingTimesLastYear;


-- Q15.  Employees with high attrition risk. 

SELECT 
    EmpID,
    Gender,
    Department,
    JobSatisfaction,
    WorkLifeBalance,
    OverTime
FROM
    hr_analysis
WHERE
    Attrition = 'Yes'
        AND JobSatisfaction <= 2
        AND WorkLifeBalance <= 2
        AND OverTime = 'Yes';


-- Q16. Average total working years by education level. 

SELECT 
    Education, AVG(TotalWorkingYears) AS AvgYears
FROM
    hr_analysis
GROUP BY Education;


-- Q17. Who are the top 10 high earners at risk of leaving?

SELECT 
    EmpID, JobRole, MonthlyIncome, Attrition, PerformanceRating
FROM
    hr_analysis
WHERE
    Attrition = 'Yes'
ORDER BY MonthlyIncome DESC
LIMIT 10;


-- Q18. What is the current average Work-Life Balance score across departments.

SELECT 
    Department, AVG(WorkLifeBalance) AS AvgWorkLifeScore
FROM
    hr_analysis
GROUP BY Department;


-- Q19. What is the performance rating trend by age group.

SELECT 
    AgeGroup, AVG(PerformanceRating) AS AvgPerformance
FROM
    hr_analysis
GROUP BY AgeGroup;


-- END --
