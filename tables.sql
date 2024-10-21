-- fact table
CREATE OR REPLACE TABLE `kornel-crypto-project.menagment.FactSales` AS
SELECT 
    CustomerID,
    Date,
    ProductID,
    `Unit Cost`,
    `Unit Price`,
    Units
FROM `kornel-crypto-project.menagment.sales`;
-- Customer table
CREATE OR REPLACE TABLE `kornel-crypto-project.menagment.DimCustomer` AS
SELECT DISTINCT
    CustomerID,
    `Email Name`,
    ZipCode
FROM `kornel-crypto-project.menagment.sales`;
-- Geography table
CREATE OR REPLACE TABLE `kornel-crypto-project.menagment.DimGeography` AS
SELECT DISTINCT
    City,
    Country,
    District,
    Region,
    State,
    ZipCode
FROM `kornel-crypto-project.menagment.sales`;
-- Product table
CREATE OR REPLACE TABLE `kornel-crypto-project.menagment.DimProduct` AS
SELECT DISTINCT
    Category,
    Product,
    ProductID,
    Segment,
    `Unit Cost`,
    `Unit Price`
FROM `kornel-crypto-project.menagment.sales`;
