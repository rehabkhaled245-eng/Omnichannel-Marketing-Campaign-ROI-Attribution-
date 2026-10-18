## 1. Data Understanding and Data Cleaning

The first stage of the data analysis process focused on understanding, cleaning, and preparing the dataset using Python.

First, I imported the libraries I need. Pandas is the most important one because it lets us load the file and work with the data as a table. NumPy is used for calculations. Matplotlib and Seaborn are used later to draw charts. I import everything at the start so I don’t have to stop and add libraries in the middle of the analysis

Then I loaded the dataset using pd.read_csv, and I stored it in a variable called df. I used encoding='latin1' because the file contains special characters, and without it, Python can give us an error while reading. After that, I used head() to show the first five rows. The reason is to make sure the file was loaded correctly and to get a first look at the columns and the values.

Next, I wanted to understand the data better. I used info(), which shows the number of rows and columns, the data type of each column, and how many values are not empty. I found 180,519 rows and 53 columns. Then I used isnull().sum(), which counts the missing values in each column. The reason is that missing values can cause errors and give wrong results, so I must find them before the analysis. Finally, I used columns to see the exact names of all columns, because I need to write them correctly in the next steps.

After exploring the data, I removed the columns that I don’t need using drop(). The reason is that these columns don’t add value to our analysis, and some of them are almost empty, like Product Description, which has no values at all. Removing them makes the dataset smaller, cleaner, and faster to work with. Then I used head() and columns again to confirm that the columns were removed correctly.

After that, I handled the missing values using fillna(). In the Customer Last Name column, I filled the empty values with ‘Uk’, which means ‘Unknown’. I used text here because the column contains text. In the Customer Zipcode column, I filled the empty values with zero, because this column contains numbers. The reason is that I didn’t want to delete these rows, since only a few values were missing, and deleting them would lose other useful information about the orders. 
Finally, I ran isnull().sum() again to confirm that there are no missing values left.

-----

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

![Order Profit Per Order Boxplot](./Boxplot%20of%20Order%20profit%20per%20order.png)

#### 4. Order Item Total

![Order Item Total Boxplot](./Boxplot%20of%20Order%20item%20total.png)

#### 5. Product Price

![Product Price Boxplot](./Boxplot%20of%20Product%20Price.png)

### Conclusion

`Order Profit Per Order` had the highest number of detected outliers, including unusually high positive values and extreme negative values. `Order Item Discount` also contained a considerable number of potential outliers.

These findings highlight values that may require further investigation. However, outliers do not necessarily indicate data errors, as they may represent valid business transactions or unusual events.

Therefore, I retained the original values at this stage and did not remove any outliers before validating their accuracy and business meaning.

This analysis helped me better understand the distribution of numerical variables and identify potential data quality issues before proceeding with further exploratory data analysis.
