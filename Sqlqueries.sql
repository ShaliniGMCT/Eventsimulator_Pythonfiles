-- Step 1: Create the Products table
CREATE TABLE Products (
    ProductId VARCHAR(20) PRIMARY KEY,
    ProductName VARCHAR(100),
    SKU VARCHAR(20),
    Brand VARCHAR(50),
    Category VARCHAR(50),
    UnitCost DECIMAL(10, 2)
);



--To enable database for CDC, click on + New Query (1) and paste the following code into the Query editor (2) and Run (3) it to create the stored procedure.
-- Enable Database for CDC
EXEC sys.sp_cdc_enable_db;


-- Enable CDC for a table using a gating role option
EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name   = N'Products',
    @role_name     = NULL
GO


--SQL Code to be used in Real-time while implementing EventStream
SELECT *, CASE WHEN DefectProbability > 0.1 THEN '1' ELSE '0' END AS Anamoly
INTO [Eventhouse]
FROM [Eventstream2410813-stream]


-- Step 2: Insert the product data
INSERT INTO dbo.Products (ProductId, ProductName, SKU, Brand, Category, UnitCost) VALUES
('PROD4000', 'Cyberpunk Hat', 'SKU4000', 'AirRun', 'Altars', 133.79),
('PROD4001', 'CloudShell Jacket', 'SKU4001', 'AirRun', 'Kids', 272.67),
('PROD4002', 'Oldschool Cardigan', 'SKU4002', 'UrbanStep', 'GenZ Pros', 295.88),
('PROD4003', 'TropicFeel Tshirt', 'SKU4003', 'UrbanStep', 'Colours', 138.43),
('PROD4004', 'ClassicWear Hoodie', 'SKU4004', 'ClassicWear', 'Kids', 63.33),
('PROD4005', 'TropicFeel Tshirt', 'SKU4005', 'AirRun', 'GenZ Pros', 182.16),
('PROD4006', 'UrbanStep Shoes', 'SKU4006', 'ZAVA', 'Colours', 36.00),
('PROD4007', 'UrbanStep Shoes', 'SKU4007', 'UrbanStep', 'Altars', 35.92),
('PROD4008', 'UrbanStep Shoes', 'SKU4008', 'ZAVA', 'Altars', 39.18),
('PROD4009', 'Cyberpunk Hat', 'SKU4009', 'AirRun', 'Kids', 53.56),
('PROD4010', 'UrbanStep Shoes', 'SKU4010', 'AirRun', 'GenZ Pros', 193.42),
('PROD4011', 'CloudShell Jacket', 'SKU4011', 'ClassicWear', 'Colours', 281.71),
('PROD4012', 'Oldschool Cardigan', 'SKU4012', 'StreetFlex', 'Altars', 94.36),
('PROD4013', 'Oldschool Cardigan', 'SKU4013', 'StreetFlex', 'Kids', 108.52),
('PROD4014', 'Cyberpunk Hat', 'SKU4014', 'ZAVA', 'Kids', 193.91),
('PROD4015', 'UrbanStep Shoes', 'SKU4015', 'ZAVA', 'GenZ Pros', 170.53),
('PROD4016', 'UrbanStep Shoes', 'SKU4016', 'StreetFlex', 'Altars', 281.30),
('PROD4017', 'Cyberpunk Hat', 'SKU4017', 'AirRun', 'Colours', 99.79),
('PROD4018', 'CloudShell Jacket', 'SKU4018', 'ClassicWear', 'Colours', 191.26),
('PROD4019', 'ClassicWear Hoodie', 'SKU4019', 'ClassicWear', 'GenZ Pros', 206.99);


-- Step 2: Insert the product data
INSERT INTO dbo.Products (ProductId, ProductName, SKU, Brand, Category, UnitCost) VALUES
('PROD4020', 'Cyberpunk Hat', 'SKU4020', 'AirRun', 'Altars', 133.79),
('PROD4021', 'CloudShell Jacket', 'SKU4021', 'AirRun', 'Kids', 272.67),
('PROD4022', 'Oldschool Cardigan', 'SKU4022', 'UrbanStep', 'GenZ Pros', 295.88),
('PROD4023', 'TropicFeel Tshirt', 'SKU4023', 'UrbanStep', 'Colours', 138.43),
('PROD4024', 'ClassicWear Hoodie', 'SKU4024', 'ClassicWear', 'Kids', 63.33),
('PROD4025', 'TropicFeel Tshirt', 'SKU4025', 'AirRun', 'GenZ Pros', 182.16),
('PROD4026', 'UrbanStep Shoes', 'SKU4026', 'ZAVA', 'Colours', 36.00),
('PROD4027', 'UrbanStep Shoes', 'SKU4027', 'UrbanStep', 'Altars', 35.92),
('PROD4028', 'UrbanStep Shoes', 'SKU4028', 'ZAVA', 'Altars', 39.18),
('PROD4029', 'Cyberpunk Hat', 'SKU4029', 'AirRun', 'Kids', 53.56),
('PROD4030', 'UrbanStep Shoes', 'SKU4030', 'AirRun', 'GenZ Pros', 193.42),
('PROD4031', 'CloudShell Jacket', 'SKU4031', 'ClassicWear', 'Colours', 281.71),
('PROD4032', 'Oldschool Cardigan', 'SKU4032', 'StreetFlex', 'Altars', 94.36),
('PROD4033', 'Oldschool Cardigan', 'SKU4033', 'StreetFlex', 'Kids', 108.52),
('PROD4034', 'Cyberpunk Hat', 'SKU4034', 'ZAVA', 'Kids', 193.91),
('PROD4035', 'UrbanStep Shoes', 'SKU4035', 'ZAVA', 'GenZ Pros', 170.53),
('PROD4036', 'UrbanStep Shoes', 'SKU4036', 'StreetFlex', 'Altars', 281.30),
('PROD4037', 'Cyberpunk Hat', 'SKU4037', 'AirRun', 'Colours', 99.79),
('PROD4038', 'CloudShell Jacket', 'SKU4038', 'ClassicWear', 'Colours', 191.26),
('PROD4039', 'ClassicWear Hoodie', 'SKU4039', 'ClassicWear', 'GenZ Pros', 206.99);