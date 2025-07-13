# Human_Resources_Analysis-Excel-SQL-Power-BI

## 📊 Overview
This project presents a comprehensive HR analytics dashboard developed using **Power BI**, driven by data from a SQL table named `hr_analysis`. The goal is to uncover actionable insights related to employee attrition, performance, satisfaction, compensation, and other critical HR metrics.

The dashboard is designed to help HR professionals and leadership:
- Identify top contributors at risk of leaving
- Understand attrition drivers across departments, age groups, and job roles
- Explore relationships between compensation, work-life balance, and performance

---

## 🧩 Dataset Structure

The dataset (`hr_analysis`) contains the following key columns:

| Column Name                 | Description                                      |
|----------------------------|--------------------------------------------------|
| EmpID                      | Unique identifier for each employee             |
| Age                        | Age of the employee                             |
| AgeGroup                   | Categorized age group (e.g., 20-30, 31-40)       |
| Attrition                  | Indicates if the employee has left ("Yes"/"No") |
| BusinessTravel             | Frequency of business travel                    |
| DailyRate, MonthlyRate     | Compensation details                            |
| Department                 | Department name                                 |
| Education, EducationField  | Level and area of education                     |
| EnvironmentSatisfaction    | Workplace environment rating (1-4)              |
| Gender                     | Gender of the employee                          |
| JobRole, JobLevel          | Role and hierarchy level                        |
| JobSatisfaction            | Job satisfaction score (1-4)                    |
| MaritalStatus              | Marital status                                  |
| MonthlyIncome              | Monthly salary                                  |
| OverTime                   | Whether the employee works overtime             |
| PercentSalaryHike          | Last hike in percentage                         |
| PerformanceRating          | Annual performance score                        |
| RelationshipSatisfaction   | Colleague relationship score                    |
| TotalWorkingYears          | Total professional experience                   |
| YearsAtCompany             | Tenure in current company                       |
| YearsWithCurrManager       | Time with current manager                       |

---

## 🚀 Features

### ✔️ SQL-Driven Insights (15+ Professional Questions)
Includes analytical queries such as:
- Attrition rate by department, gender, and age group
- Top 10 high earners at risk of leaving
- Salary trends vs performance
- Work-life balance and job satisfaction scores
- Department-wise average income and promotions

Each question has a corresponding **SQL query** and **Power BI visual recommendation**.

### ✔️ Power BI Visualizations
Power BI visuals used:
- **KPI Cards**: Attrition rate, average salary, performance rating
- **Bar/Column Charts**: Satisfaction, salary hikes, job role comparisons
- **Slicers**: Interactive filters for department, gender, education, overtime, etc.
- **Tables**: Top 10 earners at risk, detailed employee breakdown
- **Matrix**: Multi-category comparison (e.g., job role × satisfaction)

---

## 🛠️ How to Use

1. **Load the Data**  
   Import the `hr_analysis` table into Power BI from your SQL source.

2. **Import Measures and Visuals**  
   Add DAX measures like:
   - `Attrition Rate (%)`
   - `Average Monthly Income`
   - `Top Earners Rank`
   - `Average Performance Rating`
   - `WorkLifeBalance Score`

3. **Explore & Filter**  
   Use slicers to explore data by:
   - `Department`
   - `Gender`
   - `JobRole`
   - `AgeGroup`

4. **Deploy or Share**  
   Publish the report to Power BI Service for broader access.

---

Screenshot 1:-
![image alt](https://github.com/Vikas-Sajwan/Human_Resources_Analysis-Excel-SQL-Power-BI/blob/eb6193fb91a99f340afca900a42441ea027f1d27/Screenshot%201.png)

Screenshot 2:-
![image alt](https://github.com/Vikas-Sajwan/Human_Resources_Analysis-Excel-SQL-Power-BI/blob/fbe67fe254011b93116f3a4df516a9e27717e279/Screenshot%202.png)

Screenshot 3:-
![image alt](https://github.com/Vikas-Sajwan/Human_Resources_Analysis-Excel-SQL-Power-BI/blob/ea8d0f8b841bb5a5066100fc10040e73a62117fe/Screenshot%203.png)

🤝 Contributions
Feel free to open issues or submit pull requests if you want to improve queries, visuals, or add more insights.

