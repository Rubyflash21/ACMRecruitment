# Students Performance Dataset — Data Refinery

## Overview

This project cleans and validates the Students Performance Dataset using Python and Pandas. The goal is to identify and resolve missing values and duplicate records while preserving the integrity of the original data.

## Cleaning Approach

### 1. Loaded the Dataset

The original `StudentsPerformance.csv` file was loaded into a Pandas DataFrame using `pd.read_csv()`.

### 2. Checked for Missing Values

Missing values were identified using `df.isnull().sum()`.

No missing values were found in the dataset, so no imputation or removal of records was necessary.

### 3. Checked and Removed Duplicate Records

Duplicate records were identified using `df.duplicated().sum()`.

The `drop_duplicates()` method was then applied to ensure that duplicate records were removed if present.

### 4. Verified the Cleaned Dataset

After cleaning, the dataset was checked again for:

* Missing values
* Duplicate records

Assertions were also used to verify that the cleaned dataset contained zero missing values and zero duplicate records.

### 5. Saved the Cleaned Dataset

The cleaned DataFrame was saved as:

`cleaned_students_performance.csv`

The file was saved with `index=False` to prevent the Pandas DataFrame index from being added as an unnecessary column.

## Result

The cleaned dataset retains the original structure while meeting the required data-quality checks. No missing-value treatment was required, and the final dataset contains no duplicate records.

## Files

* `data_refinery.ipynb` — Jupyter Notebook containing the data-cleaning process.
* `cleaned_students_performance.csv` — Cleaned version of the dataset.
* `README.md` — Documentation of the cleaning approach.

