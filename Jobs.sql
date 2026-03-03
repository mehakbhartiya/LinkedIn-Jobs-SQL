SHOW tables;
#select * from jobs;
#ALTER TABLE jobs RENAME COLUMN `ï»¿ID`TO Id;
# DATA VALIDATION
SELECT COUNT(*) AS total_rows FROM jobs;
SELECT COUNT(*) AS total_rows, COUNT(DISTINCT id) AS distinct_ids FROM JOBS;
SELECT DISTINCT work_type FROM Jobs ORDER BY work_type;
ALTER TABLE JOBS DROP COLUMN WORK_TYPE;
ALTER TABLE JOBS DROP COLUMN EMPLOYMENT_TYPE;
SELECT * FROM JOBS;
#1. Top job titles by posting count
SELECT title, COUNT(*) AS posting_count FROM jobs GROUP BY title ORDER BY posting_count DESC, title LIMIT 10;
#2. Top hiring companies
SELECT company, COUNT(*) AS posting_count FROM jobs GROUP BY company ORDER BY posting_count DESC, company LIMIT 10;
#3. What all are the top hiring locations
SELECT location, COUNT(*) AS posting_count FROM jobs GROUP BY location ORDER BY posting_count DESC, location LIMIT 10;
#4. Top analyst roles by location. It shows where analyst rtype roles are concentrated
SELECT location, title, COUNT(*) AS posting_count FROM jobs WHERE LOWER(title) LIKE '%analyst%' GROUP BY location, title ORDER BY posting_count DESC, location, title LIMIT 20;
#5. Companies hiring across the widest range of roles which means Diversified hiring vs narrow hiring
SELECT company, COUNT(DISTINCT title) AS distinct_roles, COUNT(*) AS total_postings FROM jobs GROUP BY company ORDER BY distinct_roles DESC, total_postings DESC, company LIMIT 15;
#6. Total postings from top 10 companies
WITH company_counts AS (
    SELECT
        company,
        COUNT(*) AS posting_count
    FROM jobs
    GROUP BY company
),
top_10_companies AS (
    SELECT posting_count
    FROM company_counts
    ORDER BY posting_count DESC
    LIMIT 10
)
SELECT
    (SELECT SUM(posting_count) FROM top_10_companies) AS top_10_company_postings,
    (SELECT COUNT(*) FROM jobs) AS total_postings,
    ROUND(
        100.0 * (SELECT SUM(posting_count) FROM top_10_companies)
        / (SELECT COUNT(*) FROM jobs),
        2
    ) AS pct_of_total_postings;
#7. Distinct Source of job postings. This shows what all platforms post the job postings.
Select distinct source from jobs order by source;