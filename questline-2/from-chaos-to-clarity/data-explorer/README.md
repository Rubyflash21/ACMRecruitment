# Students Performance Dataset — Data Explorer

## Overview

This project performs an initial exploration of the **Students Performance Dataset** using Python and Pandas. The purpose of the analysis is to understand the dataset's structure, data types, data quality, and basic numerical characteristics.

## Dataset Structure

The dataset contains **1,000 rows and 8 columns**.

The columns are:

* `gender`
* `race/ethnicity`
* `parental level of education`
* `lunch`
* `test preparation course`
* `math score`
* `reading score`
* `writing score`

The first five columns contain categorical information about the students, while the last three columns contain numerical scores for mathematics, reading, and writing.

## Data Types

The categorical columns are stored as `object` data types, while the three score columns are stored as integer data types.

This makes the dataset suitable for separating categorical and numerical features for further analysis.

## Missing Values

The missing-value check showed **no missing values in any of the columns**. This indicates that the dataset is complete with respect to null values and does not require missing-value handling for this initial exploration.

## Summary Statistics

The `describe()` function was used to generate summary statistics for the numerical columns:

* `math score`
* `reading score`
* `writing score`

The statistics include the count, mean, standard deviation, minimum, quartiles, and maximum values.

The average reading and writing scores are slightly higher than the average mathematics score. The scores range from 0 to 100, providing a useful basis for comparing student performance across the three subjects.

## Conclusion

Overall, the dataset is well-structured and contains no missing values. It includes both categorical and numerical features, making it suitable for further exploration and analysis of factors that may be associated with student performance.

## Files

* `data_explorer.ipynb` — Jupyter Notebook containing the Pandas-based exploration.
* `StudentsPerformance.csv` — The dataset used for the analysis.

