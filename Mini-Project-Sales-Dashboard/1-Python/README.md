The first stage of the data analysis process we used Python , which focused on Data Understanding and Data Cleaning, to explore, clean, and prepare the dataset for analysis. First, we imported the necessary libraries, especially Pandas, and loaded the dataset using the appropriate reading function .read_csv(). Then, we explored the data using "head()" to display the first five rows, "info()" to understand the columns and data types, and "columns" to view all column names. 
We also used "isnull()" and "isnull().sum()" to identify missing values. After examining the dataset, we removed unnecessary columns using "drop()" and applied "inplace=True" to save the changes directly to the DataFrame. We then used "head()" and "columns" again to verify that the unwanted columns had been removed. 
Next, we handled missing values using "fillna()". 
Finally, we used "isnull().sum()" again to check the missing values and verify the results of the cleaning process. 
This stage helped us prepare the dataset for the next steps of the data analysis process.
-----------------------------------------------------------------------------------------------------
Outlier Detection and Analysis
In this step, I analyzed potential outliers in five numerical columns: Sales, Order Item Discount, Order Profit Per Order, Order Item Total, and Product Price.
I used the describe() function to explore the statistical summary of the dataset and created boxplots using Seaborn to visualize the distribution of each column.
To identify potential outliers, I applied the Interquartile Range (IQR) method. I calculated Q1, Q3, and IQR, then determined the lower and upper bounds to count outliers in each column.
I also examined the minimum and maximum values, calculated the IQR boundaries, and displayed the five lowest and highest outlier values for each column.
Key Findings:
- Sales: 488 outliers.
- Order Item Discount: 7,537 outliers.
- Order Profit Per Order: 18,942 outliers.
- Order Item Total: 1,943 outliers.
- Product Price: 2,048 outliers.
Conclusion:
Order Profit Per Order had the highest number of detected outliers, including extreme positive and negative values. I retained the identified outliers for further investigation because unusual values do not necessarily indicate data errors. No outliers were removed during this step.
---------------------------------------------------------------------------------------------------------------------------------------
