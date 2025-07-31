--Task 1:Database Schema Creation
--Define tables:Customers,Policies,Claims,PolicyTypes.
  --Include fields such as CustomerID,PolicyID,ClaimID,PolicyTypeID,ClaimAmount,ClaimDate,
  --PolicyStartDate,PolicyEndDate,etc.

---Customer Table---
Create table Customers(
CustomerID serial primary key,
FirstName varchar(50),
LastName varchar(50),
DateOfBirth Date,
Gender Char(1),
Address varchar(100),
City varchar(50),
State varchar(50),
ZipCode varchar(10)
)

---PolicyTypes Table---
create table PolicyTypes(
PolicyTypeID serial primary key,
PolicyTypeName varchar(50),
Description text
)

---Policies Table---
create table Policies(
PolicyID serial primary key,
CustomerID int references Customers(CustomerID),
PolicyTypeid int references PolicyTypes(PolicyTypeID),
PolicyStartDate date,
PolicyEndDate date,
Premium decimal(10,2)
)

---Claims Table---
create table Claims(
ClaimID serial primary key,
PolicyID int references Policies(PolicyID), 
ClaimDate date,
ClaimAmount Decimal(10,2),
ClaimDescription text,
ClaimStatus varchar(50)
)