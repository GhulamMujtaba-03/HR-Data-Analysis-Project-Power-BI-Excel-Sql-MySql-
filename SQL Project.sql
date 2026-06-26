drop table hr_data;
CREATE TABLE HR_DATA (
emp_no int PRIMARY KEY,
gender varchar(30) NOT NULL,
marital_status varchar(30),
age_band varchar(50),
age int ,
department varchar(20),
education varchar(50),
education_field varchar(50),
job_role varchar(50),
business_travel varchar(50),
employee_count int,
attrition varchar(50),
attrition_label varchar(50),
job_satisfaction INT,
active_employee INT
);
LOAD DATA INFILE 'D:/New folder (3)/Uploads/hrdata.csv'
INTO TABLE hr_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT * FROM hr_data;
SELECT sum(employee_count) as Employees FROM hr_data
## WHERE EDUCATION = 'High School' 
## WHERE department = 'Sales'
## WHERE department = 'R&D'
WHERE education_field = 'Medical';

select count(attrition) as Attrition from hr_data
where attrition = 'Yes'
and education = "Bachelor's Degree"  and department = 'R&D';


## attrtion rate
select (select count(attrition)  
from hr_data where attrition = "Yes" )
/sum(employee_count) * 100as attrtion_Rate from hr_data;

-- active employee
select sum(employee_count)  - 
(select count(attrition) 
from hr_data where attrition= "Yes" and gender = "Male") 
as Active_Employee  from hr_data where gender = "Male";


select sum(employee_count)  - 
(select count(attrition) 
from hr_data where attrition= "Yes" and gender= "Female") 
as Active_Employee  from hr_data where gender = "Female";

-- average age
select avg(age) as average_age from hr_data;

-- gender wise attrition
select gender , count(attrition) from hr_data 
where attrition = "Yes"
group by gender
order by count(attrition) desc;

-- Department Wise Attrition

select department ,count(attrition),
(count(attrition) /
(select count(attrition) from hr_data 
where attrition = "Yes") * 100) as Female_Wise_attrition
from hr_data
where attrition = "Yes" and gender = "Female"
group by department 
order by count(attrition) desc;

select department ,count(attrition),
(count(attrition) /
(select count(attrition) from hr_data 
where attrition = "Yes") * 100) Male_Wise_attrition
from hr_data
where attrition = "Yes" and gender = "Male"
group by department 
order by count(attrition) desc;



SELECT age_band,count(employee_count) as Age_group_attrition from hr_data
where gender = "Male" 
group by age_band
order by count(employee_count);


SELECT age_band,count(employee_count) as Age_group_attrition from hr_data
where gender = "Female"
group by age_band
order by count(employee_count);


select education_field , count(employee_count)
as education_wise_attrition from hr_data
where attrition = "Yes"
group by education_field
ORDER BY count(employee_count);