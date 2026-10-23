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

### 1. Sales Overview

This page provides a high-level view of overall business performance.

**Key metrics:**
- Total Sales
- Total Profit
- Total Orders
- Total Customers

**Analysis includes:**
- Sales trends over time.
- Sales performance across regions.
- Profit contribution by market.
- Delivery status distribution.

**Business Value:** Helps stakeholders quickly assess business performance and identify changes that require further investigation.
