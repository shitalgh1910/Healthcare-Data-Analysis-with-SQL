## Healthcare-Data-Analysis-with-SQL
### Project Overview

This project involves analysing a healthcare dataset From Kaggle using SQL to derive meaningful insights. The dataset contains information about hospital admissions, patient demographics, medical conditions, billing amounts, and other healthcare-related attributes. The analysis is performed using various SQL queries to clean data, perform aggregations, and extract insights.

### Dataset

The dataset consists of patient records, including:

Age: Patient's age.

Medical Condition: Diagnosis or condition of the patient.

Insurance Provider: Insurance company covering the patient.

Billing Amount: Hospital charges for the patient.

Date of Admission & Discharge Date: Hospital stay duration.

Test Results: Outcomes of medical tests.

Blood Type: Patient’s blood group.

Hospital: Hospital where the patient was admitted.

## SQL Queries & Analysis

### Data Cleaning

Renamed columns with spaces to ensure easier querying.

Changed data types for consistency and accuracy.

### Data Insights

Total Records: Counted the total number of rows.

Age Analysis: Identified the minimum (18 years) and maximum (85 years) ages.

Most Common Medical Condition: Found that Asthma had the highest patient count.

Average Patient Age: Calculated to be 51 years.

Age-Wise Hospitalization: Identified the most common patient age (59 years, with 175 patients).

Preferred Insurance Provider: Cigna was the most frequently used provider.

Preferred Hospital: Smith PLC had the highest admissions.

Average Billing Amount by Medical Condition: Highest for Diabetes ($26,060.12), followed by Obesity ($25,720.84), and lowest for Arthritis ($25,187.63).

Hospital Stay Duration: Determined the number of days patients spent in the hospital for each medical condition.

Blood Type Distribution: Analyzed the blood type distribution among patients aged 20 to 45.

### SQL Techniques Used

Data Selection & Filtering (SELECT, WHERE, ORDER BY)

Aggregation Functions (COUNT, AVG, MAX, MIN, ROUND)

Data Grouping (GROUP BY)

String Pattern Matching (LIKE)

Date Calculations (DATEDIFF, COALESCE, CURDATE)

Column Renaming & Data Type Modification (ALTER TABLE, CHANGE COLUMN)

### Future Enhancements

Incorporate Joins for multi-table analysis.

Perform Time-Series Analysis for patient trends.

Create Visual Dashboards using Power BI or Tableau for better data representation.



