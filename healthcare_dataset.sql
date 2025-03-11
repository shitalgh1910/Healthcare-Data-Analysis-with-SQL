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

