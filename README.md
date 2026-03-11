# LinkedIn Jobs SQL Analysis

This project analyzes a LinkedIn jobs dataset using SQL to uncover hiring patterns, top companies, popular roles, key locations, and source-level insights.

## Project Overview

The repository contains:

- `jobs.csv` — dataset of LinkedIn job postings
- `Jobs.sql` — SQL cleaning steps and analysis queries

The goal of this project is to practice SQL-based exploratory data analysis on real-world job posting data and answer practical questions such as:

- Which job titles appear most often?
- Which companies are hiring the most?
- Which locations have the highest number of postings?
- Where are analyst roles concentrated?
- Which companies hire across the widest range of roles?
- What share of total postings comes from the top 10 companies?
- What sources are used for job postings?

## Dataset Details

The dataset includes the following fields:

- `ID`
- `title`
- `company`
- `location`
- `link`
- `source`
- `date_posted`
- `work_type`
- `employment_type`

## Data Cleaning Performed

The SQL script includes basic cleaning and validation steps such as:

- checking total row count
- checking distinct IDs
- renaming the malformed `ID` column if needed
- reviewing distinct `work_type` values
- dropping `work_type`
- dropping `employment_type`

## SQL Analysis Included

The SQL file contains queries for:

1. **Top job titles by posting count**
2. **Top hiring companies**
3. **Top hiring locations**
4. **Top analyst roles by location**
5. **Companies hiring across the widest range of roles**
6. **Share of total postings from top 10 companies**
7. **Distinct sources of job postings**

## Example Business Questions Answered

- What roles are most in demand?
- Which employers are posting most frequently?
- What cities or regions show the strongest hiring activity?
- Are analyst roles concentrated in specific locations?
- Which companies appear to be hiring for diverse functions rather than only one role?


## How to Use

1. Download or clone this repository
2. Import `jobs.csv` into your SQL database
3. Open `Jobs.sql`
4. Run the cleaning and analysis queries step by step
5. Review the outputs to understand hiring trends in the dataset

## Learning Outcomes

This project demonstrates:

- SQL querying
- grouping and aggregation
- filtering with `LIKE`
- data validation
- use of `COUNT(DISTINCT ...)`
- Common Table Expressions (CTEs)
- business-oriented data analysis
