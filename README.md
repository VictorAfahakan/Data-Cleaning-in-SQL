# 🧹 SQL Data Cleaning Project – World Layoffs Dataset

## 📖 Project Overview

This project demonstrates a complete data cleaning process using **MySQL**. The dataset contains information about company layoffs around the world and was cleaned to improve its quality and prepare it for exploratory data analysis (EDA).

The project showcases essential SQL data cleaning techniques commonly used by data analysts and data professionals.

---

## 🎯 Project Objectives

The main objectives of this project were to:

- Identify and remove duplicate records.
- Standardize inconsistent data entries.
- Handle missing and null values.
- Convert data into appropriate formats.
- Prepare the dataset for accurate analysis and reporting.

---

## 🛠 Tools Used

- MySQL
- MySQL Workbench
- SQL

---

## 📂 Dataset

The project uses the **World Layoffs** dataset, which contains information such as:

- Company
- Location
- Industry
- Total Laid Off
- Percentage Laid Off
- Date
- Company Stage
- Country
- Funds Raised (Millions)

---

## 🔍 Data Cleaning Process

The SQL script performs the following tasks:

### 1. Data Inspection
- Reviewed the original dataset.
- Created backup tables before cleaning.

### 2. Duplicate Removal
- Used `ROW_NUMBER()` with Common Table Expressions (CTEs) to identify duplicate records.
- Deleted duplicate rows while retaining unique records.

### 3. Data Standardization
- Removed unnecessary spaces using `TRIM()`.
- Standardized text values for consistency.
- Corrected inconsistent entries across columns.

### 4. Handling Missing Values
- Identified NULL and blank values.
- Updated missing information where appropriate.
- Removed records with insufficient data when necessary.

### 5. Data Type Conversion
- Converted date fields into proper SQL date format.
- Improved data consistency for analysis.

### 6. Final Validation
- Reviewed the cleaned dataset.
- Verified that duplicates and inconsistencies had been removed successfully.

---

## 💡 SQL Concepts Demonstrated

This project demonstrates proficiency in:

- SELECT Statements
- CREATE TABLE
- INSERT INTO
- UPDATE
- DELETE
- ALTER TABLE
- Common Table Expressions (CTEs)
- Window Functions (`ROW_NUMBER()`)
- String Functions (`TRIM()`)
- Date Functions
- Data Cleaning Techniques

---

## 📁 Repository Structure

```
├── Data Cleaning.sql
├── README.md
└── (Dataset not included)
```

---

## 🚀 How to Use

1. Download or clone this repository.
2. Import the **World Layoffs** dataset into MySQL.
3. Open **Data Cleaning.sql** in MySQL Workbench.
4. Execute the SQL statements sequentially.
5. Review the cleaned dataset.

---

## 📚 Skills Demonstrated

- SQL Data Cleaning
- Data Quality Assessment
- Window Functions
- CTEs
- Data Standardization
- Handling Missing Values
- Removing Duplicates
- Data Preparation for Analysis

---

## 👤 Author

**Victor Afahakan**

- GitHub: https://github.com/yourusername
- LinkedIn: https://linkedin.com/in/yourprofile

---

## 🙏 Acknowledgements

This project was completed as part of my SQL learning journey using the **World Layoffs** dataset, inspired by SQL data cleaning exercises from **Alex The Analyst**.

```

-  `https://github.com/VictorAfahakan
-  `https://linkedin.com/in/victor-afahakan-a377381a7/
