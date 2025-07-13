     -- DATA CLEANING --


-- 1. Detecting Duplicates.

SELECT 
    Age,
    AgeGroup,
    Attrition,
    BusinessTravel,
    DailyRate,
    Department,
    DistanceFromHome,
    Education,
    EducationField,
    EmployeeCount,
    EmployeeNumber,
    EnvironmentSatisfaction,
    Gender,
    HourlyRate,
    JobInvolvement,
    JobLevel,
    JobRole,
    JobSatisfaction,
    MaritalStatus,
    MonthlyIncome,
    SalarySlab,
    MonthlyRate,
    NumCompaniesWorked,
    Over18,
    OverTime,
    PercentSalaryHike,
    PerformanceRating,
    RelationshipSatisfaction,
    StandardHours,
    StockOptionLevel,
    TotalWorkingYears,
    TrainingTimesLastYear,
    WorkLifeBalance,
    YearsAtCompany,
    YearsInCurrentRole,
    YearsSinceLastPromotion,
    YearsWithCurrManager,
    COUNT(*) AS duplicate_count
FROM
    hr_analysis
GROUP BY Age , AgeGroup , Attrition , BusinessTravel , DailyRate , Department , DistanceFromHome , Education , EducationField , EmployeeCount , EmployeeNumber , EnvironmentSatisfaction , Gender , HourlyRate , JobInvolvement , JobLevel , JobRole , JobSatisfaction , MaritalStatus , MonthlyIncome , SalarySlab , MonthlyRate , NumCompaniesWorked , Over18 , OverTime , PercentSalaryHike , PerformanceRating , RelationshipSatisfaction , StandardHours , StockOptionLevel , TotalWorkingYears , TrainingTimesLastYear , WorkLifeBalance , YearsAtCompany , YearsInCurrentRole , YearsSinceLastPromotion , YearsWithCurrManager
HAVING COUNT(*) > 1;


-- 2. Deleting duplicates

DELETE FROM hr_analysis 
WHERE
    EmpID NOT IN (SELECT 
        EmpID
    FROM
        (SELECT 
            MIN(EmpID) AS EmpID
        FROM
            hr_analysis
        GROUP BY Age , AgeGroup , Attrition , BusinessTravel , DailyRate , Department , DistanceFromHome , Education , EducationField , EmployeeCount , EmployeeNumber , EnvironmentSatisfaction , Gender , HourlyRate , JobInvolvement , JobLevel , JobRole , JobSatisfaction , MaritalStatus , MonthlyIncome , SalarySlab , MonthlyRate , NumCompaniesWorked , Over18 , OverTime , PercentSalaryHike , PerformanceRating , RelationshipSatisfaction , StandardHours , StockOptionLevel , TotalWorkingYears , TrainingTimesLastYear , WorkLifeBalance , YearsAtCompany , YearsInCurrentRole , YearsSinceLastPromotion , YearsWithCurrManager) AS keep_unique);


-- 3. Detecting Garbage values.

SELECT 
    *
FROM
    hr_analysis
WHERE
    Age < 18 OR Age > 65
        OR AgeGroup NOT IN ('18-25' , '26-35', '36-45', '46-60', '60+')
        OR Attrition NOT IN ('Yes' , 'No')
        OR BusinessTravel NOT IN ('Non-Travel' , 'Travel_Rarely', 'Travel_Frequently')
        OR Department NOT IN ('Sales' , 'Research & Development',
        'Human Resources')
        OR Education NOT BETWEEN 1 AND 5
        OR EducationField NOT IN ('Life Sciences' , 'Medical',
        'Marketing',
        'Technical Degree',
        'Other',
        'Human Resources')
        OR EnvironmentSatisfaction NOT BETWEEN 1 AND 4
        OR Gender NOT IN ('Male' , 'Female')
        OR JobInvolvement NOT BETWEEN 1 AND 4
        OR JobLevel NOT BETWEEN 1 AND 5
        OR JobSatisfaction NOT BETWEEN 1 AND 4
        OR MaritalStatus NOT IN ('Single' , 'Married', 'Divorced')
        OR MonthlyIncome < 0
        OR SalarySlab NOT IN ('0-5k' , '5k-10k', '10k-15k', '15k+')
        OR NumCompaniesWorked < 0
        OR Over18 NOT IN ('Y')
        OR OverTime NOT IN ('Yes' , 'No')
        OR PercentSalaryHike < 0
        OR PercentSalaryHike > 100
        OR PerformanceRating NOT BETWEEN 2 AND 4
        OR RelationshipSatisfaction NOT BETWEEN 1 AND 4
        OR StandardHours != 80
        OR StockOptionLevel NOT BETWEEN 0 AND 3
        OR TotalWorkingYears < 0
        OR TrainingTimesLastYear NOT BETWEEN 0 AND 6
        OR WorkLifeBalance NOT BETWEEN 1 AND 4
        OR YearsAtCompany < 0
        OR YearsInCurrentRole < 0
        OR YearsSinceLastPromotion < 0
        OR YearsWithCurrManager < 0;


-- END--