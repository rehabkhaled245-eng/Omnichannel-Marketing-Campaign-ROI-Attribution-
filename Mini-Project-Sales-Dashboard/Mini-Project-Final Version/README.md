# Sales Dashboard Connected to SQL

## Project Overview

The **Sales Dashboard Connected to SQL** is an end-to-end data analytics project designed to analyze sales performance, profitability, customer behavior, product performance, regional sales, and delivery operations.

The project demonstrates how data can be processed using Python, stored and queried in SQL Server, and transformed into interactive Power BI dashboards to support data-driven business decisions.

The dashboard helps stakeholders monitor key performance indicators (KPIs), identify business trends, evaluate regional and product performance, and discover opportunities to improve sales and operational efficiency.

## Business Objectives

The main objectives of this project are to:

- Monitor total sales, total profit, total orders, and total customers.
- Analyze sales and profit trends over time.
- Identify high-performing and underperforming regions and markets.
- Evaluate customer behavior and product performance.
- Monitor shipping and delivery status.
- Identify potential business risks and growth opportunities.
- Present analytical findings through interactive dashboards and actionable recommendations.

## Dataset

**Dataset Name:** DataCo Smart Supply Chain Dataset

**File Name:** `CoSupply_Chain_Dataset.csv`

The dataset contains supply chain, order, customer, product, sales, and shipping information. It provides a foundation for analyzing business performance and operational activities.

The dataset is imported using the `latin1` encoding to handle its character set correctly.

## Tools and Technologies

### 1. Python
Python is used for initial data exploration and preparation.

Key activities include:
- Loading and inspecting the dataset using Pandas.
- Examining data types and missing values.
- Identifying unnecessary or redundant columns.
- Cleaning and preparing customer and order information.
- Preparing the dataset for further analysis.

**Libraries:** Pandas, NumPy, Matplotlib, and Seaborn.

### 2. SQL Server
SQL Server is used to store and organize the project data.

Key activities include:
- Importing the dataset into SQL Server.
- Organizing data into tables.
- Writing SQL queries to retrieve and analyze business data.
- Calculating summary metrics and aggregations.
- Supporting structured data access for Power BI.

### 3. Power BI
Power BI is used to build interactive dashboards and visualize business performance.

Key activities include:
- Connecting Power BI to SQL Server.
- Transforming and preparing data using Power Query.
- Organizing the data model and relationships where required.
- Creating DAX measures for KPIs and analytical calculations.
- Designing interactive visualizations, filters, and report pages.
- Presenting insights in a clear, business-oriented format.

## Project Workflow

The project follows an end-to-end data analytics workflow:

1. **Data Collection:** Obtain the DataCo Smart Supply Chain dataset.
2. **Data Exploration:** Inspect the dataset structure, columns, data types, and missing values using Python.
3. **Data Cleaning:** Review unnecessary columns and prepare the data for analysis.
4. **Data Storage:** Import the prepared data into SQL Server.
5. **Data Querying:** Use SQL to retrieve, organize, and analyze the required information.
6. **Data Transformation:** Apply Power Query transformations in Power BI.
7. **Data Modeling:** Organize tables and relationships to support accurate analysis.
8. **KPI Development:** Create DAX measures for the main business indicators.
9. **Dashboard Development:** Build interactive report pages with charts, cards, and filters.
10. **Business Analysis:** Interpret the results and develop recommendations based on the available data.


## Dashboard Pages

### 1. Executive Overview

This page provides a high-level overview of the business's sales and order performance through key performance indicators and interactive visualizations.

**Key Metrics:**

- Total Sales
- Total Profit
- Total Orders
- Total Customers

**Analysis includes:**

- Sales trends over time.
- Total sales by order region.
- Total profit by market.
- Order distribution by delivery status.

**Interactive Filters:**

- Order Date
- Order Status
- Market
- Order Region

**Business Value:** Provides a quick overview of business performance and helps stakeholders explore sales, profitability, and delivery status.

### 2. Sales Analysis

This page focuses on sales and profitability across markets, regions, states, and time periods.

**Key Metrics:**

- Sales per Order
- Profit Margin %

**Analysis includes:**

- Total profit by order region.
- Total sales by market.
- Total sales by state.
- Monthly sales trends.

**Interactive Filters:**

- Order Status
- Market
- Order Region
- Order Date

**Business Value:** Helps compare sales and profit performance across different geographical areas and identify patterns that require further investigation.

### 3. Customer & Product Analysis

This page combines customer-related metrics with product and category performance.

**Key Metrics:**

- Sales per Customer
- Total Products
- Total Orders
- Sales per Order
- Total Customers

**Analysis includes:**

- Total sales by product category.
- Total sales by product.
- Total sales by customer segment.
- Total sales by customer ID.
- Total orders by customer segment.

**Interactive Filters:**

- Order Date
- Order Region
- Product Name

**Business Value:** Supports the exploration of customer segments, product performance, and sales distribution to identify potential opportunities for improving business performance.

### 4. Shipping & Delivery Analysis

This page evaluates shipping performance, delivery status, and late-order indicators.

**Key Metrics:**

- Average Actual Shipping Days
- Average Scheduled Shipping Days
- Late Orders %
- Total Orders
- Late Orders

**Analysis includes:**

- Order distribution by delivery status.
- Late orders across markets and regions.
- Comparison between actual and scheduled shipping durations.
- Late-order percentage by shipping mode.

**Interactive Filters:**

- Market
- Order Region
- Shipping Mode
- Order Date

**Business Value:** Helps monitor shipping performance, compare delivery durations, and investigate late-order patterns across markets, regions, and shipping methods.

## DAX Measures & KPIs

The report uses DAX measures to calculate business metrics and support interactive analysis.

The measures used in the dashboard include:

- **Total Sales:** Calculates total sales value.
- **Total Profit:** Calculates the profit metric used in the report.
- **Total Orders:** Counts orders based on the measure definition.
- **Total Customers:** Counts customers based on the measure definition.
- **Sales per Order:** Measures sales per order.
- **Sales per Customer:** Measures sales per customer.
- **Total Products:** Measures the number of products.
- **Profit Margin %:** Measures the profit margin.
- **Late Orders:** Counts orders classified as late according to the measure logic.
- **Late Orders %:** Calculates the percentage of late orders.
- **Avg Actual Shipping Days:** Calculates average actual shipping duration.
- **Avg Scheduled Shipping Days:** Calculates average scheduled shipping duration.

These measures are used in KPI cards and charts to compare performance across the available report filters.

## Data Modeling & Transformation

The project combines data preparation and querying with Power BI modeling and visualization.

Key activities include:

- Preparing the dataset using Python.
- Storing and querying data in SQL Server.
- Transforming data through Power Query.
- Organizing tables and relationships for analysis.
- Using DAX measures to calculate KPIs.
- Applying report filters to explore different business dimensions.

The data model and calculations should be validated to ensure that relationships, aggregation levels, and business definitions produce accurate results.

## Interactive Features

The Power BI report includes interactive filters and visualizations that allow users to explore data from different perspectives.

Features include:

- Filtering by order date, market, and region.
- Exploring customer segments and product performance.
- Comparing sales and profit across geographical areas.
- Investigating delivery status and shipping performance.
- Using report navigation buttons to move between pages.
- Viewing additional KPI and comparison details on the Tooltip page.

## Key Business Questions

The dashboards are designed to help investigate the following questions:

1. How do sales change over time?
2. Which order regions contribute the most to sales?
3. How does profit vary across markets and regions?
4. Which product categories and products generate the highest sales?
5. How are sales distributed across customer segments?
6. How do actual shipping days compare with scheduled shipping days?
7. How do late-order indicators vary by shipping mode, market, and region?

The answers can be explored interactively through the dashboard visuals and filters.

## Skills Demonstrated

- Data Exploration and Preparation
- Python for Data Analysis
- Pandas and NumPy
- SQL Server and SQL Querying
- Power Query
- Data Modeling
- DAX Measures and KPI Development
- Power BI Dashboard Design
- Data Visualization
- Business Intelligence
- Sales and Operational Performance Analysis

## Conclusion

The **Sales Dashboard Connected to SQL** project demonstrates an end-to-end data analytics workflow using Python, SQL Server, and Power BI.

The project transforms supply chain and sales data into interactive reports covering executive performance, sales analysis, customer and product performance, and shipping and delivery operations.

By combining KPIs, visual comparisons, and interactive filters, the dashboards provide a structured way to explore business performance and investigate potential areas for improvement.

## Tools & Technologies Summary

| Tool | Purpose |
|---|---|
| Python | Data exploration and preparation |
| Pandas | Data manipulation and cleaning |
| NumPy | Numerical operations |
| Matplotlib & Seaborn | Exploratory data visualization |
| SQL Server | Data storage and querying |
| Power Query | Data transformation |
| DAX | KPI calculations and analytical measures |
| Power BI | Interactive dashboards and reporting |

**Project Name:** Sales Dashboard Connected to SQL

**Dataset:** DataCo Smart Supply Chain Dataset

**Technologies:** Python, SQL Server, Power Query, DAX, Power BI
