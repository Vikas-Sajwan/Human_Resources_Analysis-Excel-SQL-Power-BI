-- HUMAN-RESOURCES ANALYSIS SCHEMAS --
   
   
CREATE DATABASE hr_analytics;
USE hr_analytics;


DROP TABLE IF EXISTS hr_analysis;


CREATE TABLE hr_analysis (
    EmpID VARCHAR(10),
    Age INT,
    AgeGroup VARCHAR(20),
    Attrition VARCHAR(3),
    BusinessTravel VARCHAR(50),
    DailyRate INT,
    Department VARCHAR(50),
    DistanceFromHome INT,
    Education TINYINT,
    EducationField VARCHAR(50),
    EmployeeCount INT,
    EmployeeNumber INT,
    EnvironmentSatisfaction TINYINT,
    Gender VARCHAR(10),
    HourlyRate INT,
    JobInvolvement TINYINT,
    JobLevel TINYINT,
    JobRole VARCHAR(50),
    JobSatisfaction TINYINT,
    MaritalStatus VARCHAR(20),
    MonthlyIncome INT,
    SalarySlab VARCHAR(20),
    MonthlyRate INT,
    NumCompaniesWorked TINYINT,
    Over18 VARCHAR(3),
    OverTime VARCHAR(3),
    PercentSalaryHike TINYINT,
    PerformanceRating TINYINT,
    RelationshipSatisfaction TINYINT,
    StandardHours TINYINT,
    StockOptionLevel TINYINT,
    TotalWorkingYears TINYINT,
    TrainingTimesLastYear TINYINT,
    WorkLifeBalance TINYINT,
    YearsAtCompany TINYINT,
    YearsInCurrentRole TINYINT,
    YearsSinceLastPromotion TINYINT,
    YearsWithCurrManager TINYINT
);


 -- END OF SCHEMAS --