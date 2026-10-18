---هنا بطلب منه يستخدم الداتا اللى هشتغل عليها
use DataCoSupplyChain

---هنا بشوف محتوى الداتا بتعتى
select *from DataCoSupplyChain

---هنا بشوف نوع كل عمود
exec sp_help 'dbo.DataCoSupplyChain'

---هنا غيرت نوع اعمده الاسعار وخليتها بعد العلامه رقم عشري واحد
alter table dbo.DataCoSupplyChain
alter column [Order_item_discount]decimal (18,1)
alter table dbo.DataCoSupplyChain
alter column[Order_Item_Discount_Rate]decimal (18,1)
alter table dbo.DataCoSupplyChain
alter column[Order_Item_Profit_Ratio]decimal (18,1)
alter table dbo.DataCoSupplyChain
alter column[Sales]decimal (18,1)
alter table dbo.DataCoSupplyChain
alter column[Order_Item_Total]decimal (18,1)
alter table dbo.DataCoSupplyChain
alter column[Order_Profit_Per_Order]decimal (18,1)
alter table dbo.DataCoSupplyChain
alter column[Product_Price]decimal (18,1)

----هنا وحدت كل ال (id) وخليتهم كلهم (int)
alter table dbo.DataCoSupplyChain
alter column[Category_Id] int
alter table dbo.DataCoSupplyChain
alter column[Customer_Id] int
alter table dbo.DataCoSupplyChain
alter column[Department_Id] int
alter table dbo.DataCoSupplyChain
alter column[Order_Id] int
alter table dbo.DataCoSupplyChain
alter column[Order_Item_Id] int
alter table dbo.DataCoSupplyChain
alter column[Product_Card_Id] int

---- هنا عملت اعمده للتاريخ واعمده للوقت
alter table dbo.DataCoSupplyChain add [Date_Orders] Date
alter table dbo.DataCoSupplyChain add [Time_Orders] Time
alter table dbo.DataCoSupplyChain add [Shipping_Date] Date
alter table dbo.DataCoSupplyChain add [Sipping_Time] Time

----هنا فصلت بين الوقت والتاريخ
SELECT 
    CAST([order_date_DateOrders] AS DATE) AS [Date_Orders],
    CAST([order_date_DateOrders] AS TIME) AS [Time_Orders]
FROM 
    dbo.DataCoSupplyChain
exec sp_help 'dbo.DataCoSupplyChain'
SELECT 
    CAST(shipping_date_DateOrders AS DATE) AS [Shipping_Date],
    CAST(shipping_date_DateOrders AS TIME) AS [Sipping_Time]
FROM 
    dbo.DataCoSupplyChain

----هنا بيضيف التاريخ والوقت فالاعمده الجديده
 update dbo.DataCoSupplyChain
set 
    [Date_Orders] = CAST([order_date_DateOrders] AS DATE),
    [Date_Time] = CAST([order_date_DateOrders] AS TIME);
update dbo.DataCoSupplyChain
set 
    [Shipping_Date] = CAST([shipping_date_DateOrders] AS DATE),
    [Sipping_Time] = CAST([shipping_date_DateOrders] AS TIME)

exec sp_help 'dbo.DataCoSupplyChain'

------هنا هنبدء نعدل اسماء البلاد والمدن اللى فيها مشال وكان فى بلاد كتير انا معرفش الصح بتعها والكود كان طويل فاستعنت ب(AI)
-- =============================================
-- 1. تصحيح أسماء البلاد في عمود [Order_State]
-- =============================================

UPDATE dbo.DataCoSupplyChain
SET [Order_Country] = 
    CASE 
        WHEN [Order_Country] LIKE '%JapÃ³n%' THEN 'Japon'
        WHEN [Order_Country] LIKE '%TurquÃ\xada%' THEN 'Turquia'
        WHEN [Order_Country] LIKE '%RepÃºblica DemocrÃ¡tica del Congo%' THEN 'Republica Democratica del Congo'
        WHEN [Order_Country] LIKE '%PaÃ\xadses Bajos%' THEN 'Paises Bajos'
        WHEN [Order_Country] LIKE '%PanamÃ¡%' THEN 'Panama'
        WHEN [Order_Country] LIKE '%RepÃºblica Dominicana%' THEN 'Republica Dominicana'
        WHEN [Order_Country] LIKE '%MÃ©xico%' THEN 'Mexico'
        WHEN [Order_Country] LIKE '%PerÃº%' THEN 'Peru'
        WHEN [Order_Country] LIKE '%SudÃ¡n%' THEN 'Sudan'
        WHEN [Order_Country] LIKE '%EspaÃ±a%' THEN 'Espana'
        WHEN [Order_Country] LIKE '%NÃ\xadger%' THEN 'Niger'
        WHEN [Order_Country] LIKE '%BangladÃ©s%' THEN 'Banglades'
        WHEN [Order_Country] LIKE '%Arabia SaudÃ\xad%' THEN 'Arabia Saudi'
        WHEN [Order_Country] LIKE '%KazajistÃ¡n%' THEN 'Kazajistan'
        WHEN [Order_Country] LIKE '%IrÃ¡n%' THEN 'Iran'
        WHEN [Order_Country] LIKE '%UzbekistÃ¡n%' THEN 'Uzbekistan'
        WHEN [Order_Country] LIKE '%BenÃ\xadn%' THEN 'Benin'
        WHEN [Order_Country] LIKE '%CamerÃºn%' THEN 'Camerun'
        WHEN [Order_Country] LIKE '%AfganistÃ¡n%' THEN 'Afganistan'
        WHEN [Order_Country] LIKE '%PakistÃ¡n%' THEN 'Pakistan'
        ELSE [Order_Country]
    END
WHERE [Order_Country] LIKE '%Ã%';


-- =============================================
-- 2. تصحيح أسماء الولايات في عمود [Order_State]
-- =============================================
UPDATE dbo.DataCoSupplyChain
SET [Order_State] = 
    CASE 
        WHEN [Order_State] LIKE '%RajastÃ¡n%' THEN 'Rajasthan'
        WHEN [Order_State] LIKE '%CÃ©lebes Septentrional%' THEN 'Celebes Septentrional'
        WHEN [Order_State] LIKE '%SeÃºl%' THEN 'Seul'
        WHEN [Order_State] LIKE '%UlÃ¡n Bator%' THEN 'Ulan Bator'
        WHEN [Order_State] LIKE '%PaÃ\xadses del Loira%' THEN 'Paises del Loira'
        WHEN [Order_State] LIKE '%ChiriquÃ\xad%' THEN 'Chiriqui'
        WHEN [Order_State] LIKE '%Francisco MorazÃ¡n%' THEN 'Francisco Morazan'
        WHEN [Order_State] LIKE '%BahÃ\xada%' THEN 'Bahia'
        WHEN [Order_State] LIKE '%SÃ£o Paulo%' THEN 'Sao Paulo'
        WHEN [Order_State] LIKE '%ParanÃ¡%' THEN 'Parana'
        WHEN [Order_State] LIKE '%CamagÃ¼ey%' THEN 'Camaguey'
        WHEN [Order_State] LIKE '%PanamÃ¡%' THEN 'Panama'
        WHEN [Order_State] LIKE '%MÃ©xico%' THEN 'Mexico'
        WHEN [Order_State] LIKE '%CortÃ©s%' THEN 'Cortes'
        WHEN [Order_State] LIKE '%HolguÃ\xadn%' THEN 'Holguin'
        WHEN [Order_State] LIKE '%CearÃ¡%' THEN 'Ceara'
        WHEN [Order_State] LIKE '%GuÃ¡rico%' THEN 'Guarico'
        WHEN [Order_State] LIKE '%MaraÃ±Ã³n%' THEN 'Maranon'
        WHEN [Order_State] LIKE '%LeÃ³n%' THEN 'Leon'
        ELSE [Order_State]
    END
WHERE [Order_State] LIKE '%Ã%';


-- =============================================
-- 3. تصحيح أسماء المدن في عمود [Order_City]
-- =============================================
UPDATE dbo.DataCoSupplyChain
SET [Order_City] = 
    CASE 
        WHEN [Order_City] LIKE '%SeÃºl%' THEN 'Seul'
        WHEN [Order_City] LIKE '%SÃ£o Paulo%' THEN 'Sao Paulo'
        WHEN [Order_City] LIKE '%CamagÃ¼ey%' THEN 'Camaguey'
        WHEN [Order_City] LIKE '%MaceiÃ³%' THEN 'Maceio'
        WHEN [Order_City] LIKE '%HolguÃ\xadn%' THEN 'Holguin'
        WHEN [Order_City] LIKE '%QuixadÃ¡%' THEN 'Quixada'
        WHEN [Order_City] LIKE '%LeÃ³n%' THEN 'Leon'
        WHEN [Order_City] LIKE '%CÃ³rdoba%' THEN 'Cordoba'
        WHEN [Order_City] LIKE '%JerusalÃ©n%' THEN 'Jerusalen'
        WHEN [Order_City] LIKE '%RangÃºn%' THEN 'Rangun'
        WHEN [Order_City] LIKE '%KÃ¼tahya%' THEN 'Kutahya'
        WHEN [Order_City] LIKE '%NamangÃ¡n%' THEN 'Namangan'
        WHEN [Order_City] LIKE '%CÃºcuta%' THEN 'Cucuta'
        WHEN [Order_City] LIKE '%BrasÃ\xadlia%' THEN 'Brasilia'
        WHEN [Order_City] LIKE '%SantarÃ©m%' THEN 'Santarem'
        WHEN [Order_City] LIKE '%QuerÃ©taro%' THEN 'Queretaro'
        WHEN [Order_City] LIKE '%BalneÃ¡rio CamboriÃº%' THEN 'Balneario Camboriu'
        WHEN [Order_City] LIKE '%MaturÃ\xadn%' THEN 'Maturin'
        WHEN [Order_City] LIKE '%Ã\x81guas Lindas de GoiÃ¡s%' THEN 'Aguas Lindas de Goias'
        WHEN [Order_City] LIKE '%BogotÃ¡%' THEN 'Bogota'
        ELSE [Order_City]
    END
WHERE [Order_City] LIKE '%Ã%'
----هنا بستبدل اختصار الكلمه علشان تشتغل معايا فالخريطه اثناء التحليل
UPDATE dbo.DataCoSupplyChain
 set [Customer_Country] = 'United States'
 where [Customer_Country] = 'EE. UU.'

 select* from dbo.DataCoSupplyChain
 exec sp_help'dbo.DataCoSupplyChain'
 ---- هنا بوحد النص بخلي اول حرف من كل كلمه كابيتال 
 select upper (Type) as Type,
 (Delivery_Status)as Delivery_Status,
 (Category_Name)as Category_Name,
 (Customer_City)as Customer_City,
 (Customer_Country)as Customer_Country,
 (Customer_Fname)as Customer_Fname,
 (Customer_Lname) as Customer_Lname,
 (Customer_Segment)as Customer_Segment,
 (Customer_State)as Customer_State,
 (Department_Name)as Department_Name,
 (Market)as Market,
 (Order_City)as Order_City,
 (Order_Country)as Order_Country,
 (Order_Region)as Order_Region,
 (Order_State)as Order_State,
 (Order_Status)as Order_Status,
 (Product_Name)as Product_Name,
 (Shipping_Mode)as Shipping_Mode
 from dbo.DataCoSupplyChain

  select TRIM
 (Customer_Fname)as Customer_Fname,
 (Customer_Lname) as Customer_Lname
 from dbo.DataCoSupplyChain

 UPDATE dbo.DataCoSupplyChain
SET [Customer_State] = 'CA'
WHERE [Customer_State] IN ('95758', '91732')
   OR [Customer_State] LIKE '%[0-9]%'

  select* from dbo.DataCoSupplyChain
---- هنا بحذف الاعمده اللى مش محتجها تانى
  alter table dbo.DataCoSupplyChain
drop column [order_date_DateOrders]
  alter table dbo.DataCoSupplyChain
drop column [shipping_date_DateOrders]
----هنا بطلب حذفت عمود الاسم الخير لانه نفس عمود الاسم الاول
  alter table dbo.DataCoSupplyChain
drop column [customer_lname]
-----هنا عدلت اسم العمود
exec sp_rename 'dbo.DataCoSupplyChain.Customer_fname', 'Customer_Name', 'column'
 select* from dbo.DataCoSupplyChain

 -------------------------------------------------
---- 1. إنشاء جدول العملاء (Dim_Customers)
-------------------------------------------------
SELECT [Customer_Id],
       MAX([Customer_Name]) AS Customer_Name,
       MAX([Customer_Segment]) AS Customer_Segment,
       MAX([Customer_City]) AS Customer_City,
       MAX([Customer_State]) AS Customer_State,
       MAX([Customer_Country]) AS Customer_Country,
       MAX([Customer_Zipcode]) AS Customer_Zipcode
INTO dbo.Dim_Customers
FROM dbo.DataCoSupplyChain
GROUP BY [Customer_Id]
-- جعل Customer_Id هو Primary Key لجدول العملاء
ALTER TABLE dbo.Dim_Customers ALTER COLUMN [Customer_Id] INT NOT NULL
ALTER TABLE dbo.Dim_Customers
ADD CONSTRAINT PK_Dim_Customers PRIMARY KEY ([Customer_Id])
-------------------------------------------------
---- 2. إنشاء جدول المنتجات (Dim_Products)
-------------------------------------------------
SELECT [Product_Card_Id],
       MAX([Product_Name]) AS Product_Name,
       MAX([Category_Id]) AS Category_Id,
       MAX([Category_Name]) AS Category_Name,
       MAX([Department_Id]) AS Department_Id,
       MAX([Department_Name]) AS Department_Name,
       MAX([Product_Price]) AS Product_Price
INTO dbo.Dim_Products
FROM dbo.DataCoSupplyChain
GROUP BY [Product_Card_Id]
-- جعل Product_Card_Id هو Primary Key لجدول المنتجات
ALTER TABLE dbo.Dim_Products ALTER COLUMN [Product_Card_Id] INT NOT NULL
ALTER TABLE dbo.Dim_Products
ADD CONSTRAINT PK_Dim_Products PRIMARY KEY ([Product_Card_Id])
-------------------------------------------------
---- 3. ربط الجدول الرئيسي بالجدولين الجداد (Foreign Keys)
-------------------------------------------------
ALTER TABLE dbo.DataCoSupplyChain
ADD CONSTRAINT FK_Order_Customer 
FOREIGN KEY ([Customer_Id]) REFERENCES dbo.Dim_Customers([Customer_Id])
ALTER TABLE dbo.DataCoSupplyChain
ADD CONSTRAINT FK_Order_Product 
FOREIGN KEY ([Product_Card_Id]) REFERENCES dbo.Dim_Products([Product_Card_Id])

----هنا هحذف الاعمده الموجوده فاكتر من جدول
alter table dbo.DataCoSupplyChain drop column [customer_state]
alter table dbo.DataCoSupplyChain drop column [customer_country]
alter table dbo.DataCoSupplyChain drop column [customer_zipcode]
alter table dbo.DataCoSupplyChain drop column [product_name]
alter table dbo.DataCoSupplyChain drop column [product_price]
alter table dbo.DataCoSupplyChain drop column [category_id]
alter table dbo.DataCoSupplyChain drop column [category_name]
alter table dbo.DataCoSupplyChain drop column [department_id]
alter table dbo.DataCoSupplyChain drop column [department_name]

select *from dbo.Dim_Customers
select *from dbo.DataCoSupplyChain