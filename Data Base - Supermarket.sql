create schema SuperMarket;
use SuperMarket;
create table Sales
(InvoiceID char(50) not null,
Branch char(50),
City char(50),
CustomerType char(50),
Gender char(50),
productLine char(50),
UnitPrice float,
Quantity int,
Tax float,
Total float,
Date char(50),
Time char(50),
Payment char(50),
Cogs float,
GrossMarginPercentage float,
GrossIncome float,
Rating float,
Primary Key(InvoiceID))
ENGINE = InnoDB;




