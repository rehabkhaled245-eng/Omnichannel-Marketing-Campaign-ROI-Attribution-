## 1. Data Understanding and Data Cleaning

The first stage of the data analysis process focused on understanding, cleaning, and preparing the dataset using Python.

First, I imported the required libraries, particularly Pandas, and loaded the dataset using `read_csv()`.

To understand the dataset structure, I used:

- `head()` to display the first five rows.
- `info()` to inspect column names, data types, and non-null values.
- `columns` to review all column names.
- `isnull()` and `isnull().sum()` to identify missing values.

After exploring the dataset, I removed unnecessary columns using `drop()` and applied `inplace=True` to update the DataFrame directly. I then checked the column names and previewed the data to verify the changes.

Next, I handled missing values using `fillna()`. Finally, I used `isnull().sum()` again to verify the results of the cleaning process.

This stage helped me understand the dataset structure, address missing values, remove unnecessary columns, and prepare the data for further analysis.

---

## 2. Outlier Detection and Analysis

After preparing the dataset, I investigated potential outliers in five numerical columns: `Sales`, `Order Item Discount`, `Order Profit Per Order`, `Order Item Total`, and `Product Price`.

I used `describe()` to examine the descriptive statistics and created boxplots using Seaborn to visualize the distribution of each variable and identify potential extreme values.

To detect outliers, I applied the **Interquartile Range (IQR) method** by calculating the first quartile (Q1), third quartile (Q3), and IQR. I then calculated the lower and upper bounds and counted the values falling outside these limits.

I also examined the minimum and maximum values, reviewed the calculated boundaries, and displayed the five lowest and five highest outlier values for each column.

### Key Findings

The IQR method identified the following potential outliers:

| Column | Number of Outliers |
|---|---:|
| Sales | 488 |
| Order Item Discount | 7,537 |
| Order Profit Per Order | 18,942 |
| Order Item Total | 1,943 |
| Product Price | 2,048 |

### Boxplot Visualizations

I created boxplots using Seaborn to visualize the distributions of the selected numerical columns and highlight potential outliers.


#### 1. Sales

![Sales Boxplot](./Boxplot%20of%20Sales.png)

#### 2. Order Item Discount

![Order Item Discount Boxplot](./Boxplot%20of%20Order%20item%20discount.png)

#### 3. Order Profit Per Order

![Order Profit Per Order Boxplot](plots/Order_Profit_Per_Order_boxplot.png)

#### 4. Order Item Total

![Order Item Total Boxplot](./Boxplot%20of%20Order%20item%20total.png)

#### 5. Product Price

![Product Price Boxplot](./Boxplot%20of%20Product%20Price.png)

### Conclusion

`Order Profit Per Order` had the highest number of detected outliers, including unusually high positive values and extreme negative values. `Order Item Discount` also contained a considerable number of potential outliers.

These findings highlight values that may require further investigation. However, outliers do not necessarily indicate data errors, as they may represent valid business transactions or unusual events.

Therefore, I retained the original values at this stage and did not remove any outliers before validating their accuracy and business meaning.

This analysis helped me better understand the distribution of numerical variables and identify potential data quality issues before proceeding with further exploratory data analysis.
