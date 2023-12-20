USE supermarket2019;
describe sales;
SELECT * FROM supermarket2019.sales;


#Create a VIEW - GENDER DIM TABLE
create view Gender as
select CustomerGenderCode,CustomerGender
from sales
group by CustomerGenderCode,CustomerGender
order by CustomerGenderCode;
describe sales;

#Create a VIEW - BRANCH DIM TABLE
create view Branch as
select BranchCode,BranchCity,BranchOwner,BranchSize,YearOfEstablishment
from sales
group by BranchCode,BranchCity,BranchOwner,BranchSize,YearOfEstablishment
order by BranchCode;

#Create a VIEW - ProductLine DIM TABLE
create view ProductLine as
select ProductLineCode,ProductLine,ProductLineSupplier
from sales
group by ProductLineCode,ProductLine,ProductLineSupplier
order by ProductLine;

#Create a VIEW - Date DIM TABLE
create view Date as
select SaleMonthInNumber,SaleMonth,SaleQuarter,SaleYear
from sales
group by SaleMonthInNumber,SaleMonth,SaleQuarter,SaleYear
order by SaleMonthInNumber;

#Create a VIEW - Sales FACT TABLE
create view AllSales as
select SaleID,BranchCode,SaleTime,SaleMonthInNumber as Month,ProductLineCode,UnitPrice,Quantity,SalePayment,CustomerGenderCode,CustomerType,Rating
from sales;

