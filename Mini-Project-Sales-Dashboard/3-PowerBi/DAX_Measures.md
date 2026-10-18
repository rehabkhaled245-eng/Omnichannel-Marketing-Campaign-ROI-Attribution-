Power BI DAX Measures

Project: Sales Dashboard Connected to SQL

Note: Review table and column names against the final Power BI model before using these measures.
Some names below were inferred from the project discussion.
Keep only measures that exist in the final PBIX and validate their results.



1. Total Sales
Purpose: Calculate total sales.
Total Sales =SUM('Data Co Supply Chain'[Sales)
==========================================================
2. Total Orders
Purpose: Count unique orders.
Total Orders =DISTINCTCOUNT('Data Co Supply Chain'[Order_Id)
==========================================================
3. Total Customers
Purpose: Count unique customers.
Total Customers =DISTINCTCOUNT('Data Co Supply Chain'[Customer_Id)
==========================================================
4. Total Profit
Purpose: Calculate total profit. This version uses the profit-per-order-item ratio and sales value;
confirm this matches the project's chosen profit definition.
Total Profit =SUMX('Data Co Supply Chain','Data Co Supply Chain'[Sales]*'Data Co Supply Chain'[Order_Item Profit Ratio])
===========================================================
5. Total Discount
Purpose: Calculate the total discount amount.
Total Discount = SUM('Data Co Supply Chain'[Order_Item_Discount])
===========================================================
6. Late Orders
Purpose: Count unique orders whose delivery status is marked as late. Confirm the exact text used in Delivery Status.
Late Orders = CALCULATE([Total Orders],'Data Co Supply Chain'[Delivery_Status]= "Late delivery")
===========================================================
7. Late Orders %
Purpose: Calculate the percentage of orders marked as late.
Late Orders % = DIVIDE(CALCULATE([Total Orders],'Data Co Supply Chain'[Late_delivery_risk] = TRUE()),[Total Orders],0)
===========================================================
8. Avg Actual Shipping Days
Purpose: Calculate average actual shipping days.
Avg Actual Shipping Days = AVERAGE('Data Co Supply Chain'[Days_for_shipping_real])
===========================================================
9. Avg Scheduled Shipping Days
Purpose: Calculate average scheduled shipping days.
Avg Scheduled Shipping Days = AVERAGE('Data Co Supply Chain'[Days_for_shipment_scheduled])
===========================================================
10. Total Products
Purpose: Count unique products. Confirm the product key column name in Dim Products.
Total Products = DISTINCTCOUNT(Dim_Products[Product_Card_Id])
===========================================================
11. Profit Margin %
Purpose: Calculate profit as a percentage of sales.
Profit Margin % = DIVIDE([Total Profit],[Total Sales],0)
===========================================================
12. Sales per Order
Purpose: Calculate average sales per order.
Sales per Order = DIVIDE([Total Sales],[Total Orders],0)
===========================================================
13. Sales per Customer
Purpose: Calculate average sales per customer.
Sales per Customer = DIVIDE([Total Sales],[Total Customers],0)
===========================================================
14. On-Time Orders %
Purpose: Estimate the percentage of orders not marked late.
This assumes every order is either late or not late; if the dataset has other delivery statuses,
define the eligible statuses explicitly.
On-Time Orders % = DIVIDE([Total Orders] - [Late Orders],[Total Orders],0)
===========================================================
15. Shipping Delay Days
Purpose: Compare average actual shipping days with average scheduled shipping days.
Positive values mean actual shipping took longer on average.
Shipping Delay Days = [Avg Actual Shipping Days] - [Avg Scheduled Shipping Days]
===========================================================
16. Sales Previous Month
Purpose: Calculate sales for the previous month. Requires a valid,
continuous date table named Date_Orders with a [Date Time] column containing valid dates,
marked as a date table and related to the sales table.
Sales Previous Month = CALCULATE([Total Sales],DATEADD('Data Co Supply Chain'[Date_Orders].[Date],-1,MONTH))
============================================================
17. Sales MoM Growth %
Purpose: Calculate month-over-month sales growth or decline.
Sales MoM Growth % = DIVIDE([Total Sales] - [Sales Previous Month],[Sales Previous Month],0)
============================================================
============================================================
#Suggested formatting
Format Late Orders %, Profit Margin %, On-Time Orders %, and Sales MoM Growth % as Percentage.
Format sales, profit, discount, sales per order, and sales per customer as Currency or the agreed reporting currency.
Format shipping-day measures as Decimal Number (or Whole Number if appropriate).
============================================================
============================================================
#Model notes
Main fact table: Data Co Supply Chain
Customer dimension: Dim Customers
Product dimension: Dim Products
#Geographical Reference Tables
Order_City: Created using Reference and Remove Duplicates in Power Query.
Order_Country: Created using Reference and Remove Duplicates in Power Query.
Order_Region: Created using Reference and Remove Duplicates in Power Query.
#Date Dimension
Date_Orders: Created from the order date column and split into three separate columns: Day, Month, and Year.
















Date dimension: Date_Orders

Geographic dimensions: Order City, Order Country, Order Region
