Python Data Analysis – AdPulse-BI

Phase 1: Data Understanding & Inspection (Codes 1–5)

In this phase, the dataset was loaded and explored to understand its structure and contents.

- Imported the required Python libraries: Pandas, NumPy, Matplotlib, and Seaborn.
- Loaded the Excel workbook and identified its six sheets.
- Read each sheet into a separate DataFrame.
- Inspected the number of rows and columns in each dataset.
- Reviewed column names, data types, and general information.
- Generated descriptive statistics to understand numerical and categorical data.

Purpose: To understand the dataset structure and identify the main variables before starting the cleaning process.

Phase 2: Data Profiling (Codes 6–12)

In this phase, the quality and distribution of the data were examined.

- Checked missing values in all six datasets.
- Calculated the percentage of missing values in each column.
- Identified duplicate records.
- Generated descriptive statistics for each table.
- Used Boxplots to visualize potential outliers.
- Applied the IQR method to identify numerical outliers.

Purpose: To identify data quality issues and understand the distribution of the dataset before validation and cleaning.

Phase 3: Data Validation (Codes 13–17)

In this phase, the consistency and integrity of the dataset were checked.

- Checked primary key uniqueness across the relevant tables.
- Validated foreign key relationships between related tables.
- Reviewed missing date values.
- Identified negative values in numerical columns such as Spend, Clicks, Revenue, and Conversions.
- Checked records where Clicks exceeded Impressions.

Purpose: To identify structural inconsistencies and potential data integrity issues.

Phase 4: Data Cleaning (Codes 18–35)

In this phase, separate working copies were created to preserve the original dataset.

The following cleaning operations were performed:

- Created raw and cleaned copies of all six DataFrames.
- Removed unnecessary leading and trailing spaces from text values.
- Replaced blank strings with missing values (NaN).
- Removed exact duplicate rows while preserving records with repeated business keys.
- Converted date columns into datetime format.
- Cleaned numerical values by removing unwanted characters and converting them into numeric data types.
- Reviewed data types and missing values after cleaning.
- Checked negative values and duplicate records.
- Compared the number of rows before and after cleaning.

Purpose: To prepare the datasets for further analysis while preserving the original data and avoiding unsupported assumptions when handling missing or unusual values.

Phase 5: Exploratory Data Analysis (EDA) (Codes 36–40)

In this phase, initial visual analysis was performed to explore marketing performance across different channels and over time.

1. Total Spend by Channel

Calculated and visualized the total advertising spend for each marketing channel to compare budget distribution.

2. Total Revenue by Channel

Aggregated conversion revenue based on the last-touch channel to explore the revenue attributed to each channel.

3. Conversions by Channel

Calculated the number of recorded conversions for each last-touch channel to compare channel conversion activity.

4. Monthly Spend Trend

Aggregated daily advertising spend by month to understand spending patterns and changes over time.

Visualization: Used Pandas and Matplotlib to create bar charts and a time-series line chart, applying a consistent purple gradient color palette.

Purpose: To identify initial marketing performance patterns and prepare for deeper campaign analysis and KPI calculations.

Current Progress

Completed the initial data understanding, profiling, validation, and cleaning stages, and started exploratory data analysis through Code 40.

The remaining Python tasks include:

- Completing exploratory data analysis.
- Calculating and validating marketing KPIs.
- Analyzing customer journeys and multi-touch attribution.
- Extracting business insights and recommendations.
- Exporting the prepared datasets for SQL and Power BI integration.
