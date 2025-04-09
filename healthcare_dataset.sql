show databases;
USE healthcare_db;
-- Viewing data on database--
SELECT * FROM healthcare_dataset as Healthcare;
-- Describing characteristics of table --
DESC healthcare_dataset;

-- 1. Counting total record in database
SELECT COUNT(*) FROM healthcare_dataset;
-- we can see we have 10000 rows of data
-- 2. Lets find the maximum age of the patient admitted
SELECT MAX(age) AS Maximum_age FROM healthcare_dataset;
-- We can see the maximun age of the patient who is admitted is 85.

-- 3. Lets find the minimun age of the patient admitted
SELECT MIN(age) as Minimun_age FROM healthcare_dataset;
-- We can see the minimum age of the patient who is admitted is 18.

-- Now, for further analysis, we have a problem. We have column names which contains two words. This will make our analysis hard. So we will do some data cleaning.
ALTER TABLE healthcare_dataset
CHANGE COLUMN `Medical Condition` `medical_condition` VARCHAR(255);

-- 4. Lets see the number of patients for Each Medical Condition
SELECT COUNT(*) AS Count, medical_condition
FROM healthcare_dataset
GROUP BY medical_condition
ORDER BY Count DESC;
-- We can see that the highest number of people are suffering from Asthma i.e 1708.

-- 5. Finding Average age of hospitalised patients
SELECT round(avg(age), 0) as Average_Age from healthcare_dataset;
-- The average age of the Patient is 51Years.

-- 6. Calculating Patient Hospitalised Age wise
SELECT AGE, COUNT(Age) as Total
FROM healthcare_dataset
GROUP BY Age
ORDER BY Total DESC;

-- The maximum Number of patient are of age 59 which are 175 patients.

ALTER TABLE healthcare_dataset
CHANGE COLUMN `Insurance Provider` `insurance_provider` VARCHAR(255);
-- 7. Lets look at the most preferred Insurance Provider
SELECT insurance_provider, COUNT(insurance_provider) AS TOTAL
FROM healthcare_dataset
GROUP BY insurance_provider
ORDER BY TOTAL DESC;

-- Cigna is the most preffered Insurance Provider by patient hospitalised. 
-- 9. Finding out most preffered hospital
SELECT Hospital, COUNT(Hospital) as Total
FROM healthcare_dataset
GROUP BY Hospital
ORDER BY Total DESC;
-- Smith PLC is the most preffered Hospital among the Patients.
ALTER TABLE healthcare_dataset
CHANGE COLUMN `Billing Amount` `billing_amount` DOUBLE;
-- 10. Identifying Average Billing Amount by Medical Condition.
SELECT medical_condition, ROUND(AVG(billing_Amount),2) AS Avg_Billing_Amount
FROM healthcare_dataset
GROUP BY medical_condition
ORDER BY Avg_Billing_Amount DESC;
-- Average Billing amount for Diabetes found to be 26060.12, Obesity is 25720.84 and the lowest is Arthritis which is 25187.63.

ALTER TABLE healthcare_dataset
CHANGE COLUMN `Date of Admission` `date_of_admission` TEXT;
ALTER TABLE healthcare_dataset
CHANGE COLUMN `Discharge Date` `discharge_date` TEXT;
ALTER TABLE healthcare_dataset
CHANGE COLUMN `Test Results` `test_results` TEXT;

-- 11. Finding out Number of days spent by patient in an hospital for a medical condition
SELECT Name, medical_condition, ROUND(billing_Amount,2) as Billing_Amount, Hospital,
DATEDIFF(
COALESCE(discharge_date,CURDATE()),
COALESCE(date_of_admission,CURDATE())
) as Total_days_in_Hospital,test_results
FROM healthcare_dataset
WHERE test_results LIKE 'Normal'
ORDER BY medical_condition, Hospital;

ALTER TABLE healthcare_dataset
CHANGE COLUMN `Blood Type` `bloodType` TEXT;

-- 12. Calculating the blood types of patients which lies between age 20 to 45.
SELECT bloodType, Age, COUNT(bloodType) as Count_blood_type
FROM healthcare_dataset
WHERE Age BETWEEN 20 AND 45
GROUP BY bloodType, Age
ORDER BY bloodType DESC;





