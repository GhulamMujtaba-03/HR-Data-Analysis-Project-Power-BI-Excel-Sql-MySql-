# 📊 HR Analytics & Employee Attrition Project

## Project Overview 📌
- This comprehensive end-to-end HR analytics project spans data querying via **SQL**, core employee metrics calculation, and dynamic visual reporting built across both **Microsoft Excel** and **Power BI**. 
- The target objective was to deeply dissect organizational data to discover the leading drivers behind employee attrition, track job satisfaction levels, and outline clear demographic trends to help HR professionals mitigate talent loss and preserve operational stability.

## Project Objectives 🎯
- Query and validate underlying workforce structures using structured SQL queries.
- Develop an executive, clear-theme HR tracking system inside Microsoft Excel.
- Build a highly advanced, deep-dive purple-theme analytical application inside Power BI.
- Identify critical operational friction points through cross-filtering metrics like Age, Education Field, Job Role, and Marital Status.
- Map retention ratios and attrition gaps across gender-specific parameters within diverse age clusters.

## Tools & Technologies 🛠️
### Data Querying & Backend
- **SQL (MySQL Workbench):** Raw database schema analysis and calculated measure validations.
### Business Intelligence & Visualization
- **Microsoft Excel:** Dashboard wireframing, KPI rendering, and visual summary reporting.
- **Power BI Desktop:** Advanced data canvas, dimensional slicers, and interactive donut breakdown clusters.
- **DAX & Power Query:** Custom conditional metrics and calculation groups.

---

## Backend Data Validation (SQL) 🗄️
### Before dashboard development, the underlying dataset was queried to extract precise employee counts, attrition percentages, and active workforce figures.

#### SQL Development Interface
![SQL Data Analysis](14519.png)

###### Key Database Tasks Executed:
* **Attrition Rate Formula Verification:** Wrote nested scalar queries to calculate precise percentage margins using dynamic data rows (Full query available in `attrition_queries.sql`).
* **Active Employee Segmentations:** Filtered complex conditional strings to separate inactive records from active operational resources across gender lines.
* **Workforce Volume Sub-totals:** Aggregated specific employee cohorts across departments to align query outputs flawlessly with frontend dashboard configurations.

---

## Front-End Dashboards 📊

#### Page 1: Executive HR Summary Dashboard (Microsoft Excel) 📈
![Excel HR Dashboard](14522.png)

###### KPIs
- **Total Employees:** 1470
- **Attrition:** 237
- **Active Employees:** 1233
- **Attrition Rate:** 16.12%
- **Average Age:** 37
- **Job Satisfaction Rating:** 2.6 / 4.0 Stars

###### Slicers & Interactive Filters
- **Gender Toggle:** (Female / Male)
- **Education Field Multi-Select Slicer**
- **Department Multi-Select Slicer**

###### Visualizations
- **Total Employees By Gender:** Highlighted dual ring gauge visuals showing structural balance (588 Female / 882 Male).
- **Education Wise Attrition:** Horizontal bar chart profiling high-risk educational segments (Bachelor's Degree leading at 99 records).
- **Job Role By Attrition:** Stacked tree-map layout showing concentration gaps across roles like Laboratory Technicians and Sales Executives.
- **Department Wise Attrition:** Consolidated breakdown wheel displaying percentage splits (R&D: 56.12%, Sales: 38.82%, HR: 5.06%).
- **Attrition By Age Group:** Progression column chart tracking generational turnover trends (highest spike localized in the 25–34 group).
- **Attrition By Marital Status:** Single vs. Married tracking bars revealing maximum turnover volume among Single staff members (120).

###### Business Insights
- **The Entry-Level Risk:** Employees within the 25–34 age threshold holding a Bachelor's Degree display the highest voluntary turnover rate across the firm.
- **Marital Status Corelation:** Single employees leave at nearly 4x the rate of divorced personnel, alerting HR to develop targeted retention plans for early-career demographic groups.

---

#### Page 2: Deep-Dive HR Analytics Dashboard (Power BI) 💜
![Power BI HR Dashboard](14521.png)

###### KPIs
- **Overall Employees:** 1,470
- **Attrition:** 237
- **Attrition Rate:** 16.12%
- **Active Employees:** 1233
- **Average Age:** 37

###### Slicers & Structural Filters
- **Department Filtering Header:** Dynamic buttons for Human Resources, Life Sciences, Marketing, Medical, Technical Degree, and Other fields.

###### Visualizations
- **Department Wise Attrition:** Deep-contrast pie chart displaying direct case numbers (R&D holding 133 cases / 56% of total churn).
- **No. of Employee By Age Group:** Multi-color overlapping bar visual comparing active volume gaps across split genders.
- **Job Satisfaction Rating Matrix:** Deep-dive heat grid analyzing exact satisfaction scores (1 to 4 scaling) cross-referenced against 9 core corporate job roles.
- **Educational Wise Attrition:** Clean field-distribution chart displaying specific counts across sectors (Life Sciences leading at 89).
- **Attrition Rate By Gender For Different Age Groups:** Interactive multi-donut track row detailing exactly how turnover probabilities shift as employees age (Under 25 shows an alarming 52.63% attrition index for specific sub-groups).

###### Business Insights
- **Satisfaction Threshold Gaps:** Sales Representatives and Laboratory Technicians consistently score lowest on the 1-star satisfaction grid, highlighting structural burnout vectors.
- **Critical Age-Cluster Concerns:** Churn metrics drop drastically beyond age 45, meaning early-onboarding paths and early-career support structures are where retention dollars should be allocated.

---

## Data Architecture & Relationship Logic 📐
- Raw employee data tables normalized inside Power Query to avoid analytical duplication errors.
- Structured conditional calculations applied to divide raw baseline age integers into scannable categorical buckets (e.g., Under 25, 25-34, 35-44, etc.).

### Author 👨‍💻
- Ghulam Mujtaba
