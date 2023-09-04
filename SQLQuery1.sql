--Create A database And Name It E-Banking
CREATE DATABASE [E-Banking];

--Create Table for Customers with the Appropriate Data Type--
create table Customers(
CustomerID int Primary Key,
FirstName varchar(50) NULL,
LastName varchar(50) NULL,
DateOfBirth datetime,
Email varchar(50),
PhoneNumber varchar(20),
Address varchar(50)
)

--Create Table for Loans with The Appropriate Data type
create table Loans(
LoanID int Primary Key,
LoanType varchar(50) NULL,
LoanAmount decimal(8,2),
InterestRate varchar(50),
LoanTerm datetime,
LoanStatus varchar(50),
CustomerID int Foreign Key  REFERENCES Customers(CustomerID)
)
--Populate the table with at least 10 sample Cusotomer Records And 10 Sample Loan Records. Ensure
insert into Customers values (100, 'Yusuf', 'Olawale', '1990-02-07', 'yusuf@gmail.com', '09035478943', 'No 24 Queen Street Lagos')
insert into Customers values (101, 'Shedrack', 'Nwoye', '1989-04-12', 'shedracknwoye@yahoo.com', '07056758945', 'No 14 Allen Ebute Metta Street Lagos')
insert into Customers values (102, 'Ibrahim', 'Khalid', '1984-07-021', 'ibrahimkhalid@gmail.com', '08123456789', 'No 2 Adisa Balogun Street Ikotun Lagos')
insert into Customers values (103, 'Hamzat', 'Bello', '1972-04-11', 'hamzatbello@rocketmail.com', '08056786589', 'No 1 Muideen Street Igbogbo Ikorodu Lagos')
insert into Customers values (104, 'Babajide', 'Oyeniyi', '1989-03-24', 'babajideoyeniyi@gmail.com', '09134897564', 'No 51 Ebute Road Ogolonto Lagos')
insert into Customers values (105, 'Halimot ', 'Idowu', '1988-08-015', 'halimotidowu@ymail.com', '09098675432', 'No 22 esemojumi Street Ajegunle Lagos')
insert into Customers values (106, 'Mufasa ', 'Tunde', '1971-09-11', 'tundemufasa@gmail.com', '08167452378', 'No 89 Alabi Yellow Street Ikota Lagos')
insert into Customers values (107, 'Vincent ', 'Ejinkeonye', '1972-08-30', 'veencentkay@gmail.com', '09123546789', 'No 92 Aliu Bada Street Ogba Lagos')
insert into Customers values (108, 'Jamiu', 'Yekini', '1982-11-11', 'yekinijamiu@gmail.com', '08029523487', 'No 14 Lucky Fibre Way Ikorodu Lagos')
insert into Customers values (109, 'Ogechi ', 'Chibuzor', '1988-08-15', 'ogechiana@gmail.com', '08055447788', 'No 3 Abuja  Street Igbe Lagos')

--Create Table For Loans With The Appropriate Data Types--
insert into Loans values (10,'Personal Loan','130000','30007','2023-01-01','Approved',100)
insert into Loans values (20,'Mortgage','120000','1000','2023-02-01','Pending',101)
insert into Loans values (30,'Auto Loan','350000','3000','2023-03-01','Denied',102)
insert into Loans values (40,'Personal Loan','200000','5903','2023-04-01','Approved',103)
insert into Loans values (50,'Mortgage','400000','45000','2023-05-01','Pending',104)
insert into Loans values (60,'Auto Loan','500000','2000','2023-06-01','Denied',105)
insert into Loans values (70,'Personal Loan','700000','4000','2023-07-01','Approved',106)
insert into Loans values (80,'Mortgage','340000','5000','2023-08-01','Pending',107)
insert into Loans values (90,'Auto loan','600000','3800','2023-09-01','Denied',108)
insert into Loans values (100,'Personal Loan','450000','6500','2023-10-01','Approved',109)

--Write Sql query to retreive the list of All customers
select * from Customers

 
--Write Sql query to find the total Number of Loans for Each Customer
select b.CustomerID, count(LoanID) as TotalNumberOfLoans
from Loans a
left join Customers b on a.CustomerID = b.CustomerID
group by b.CustomerID

 

---Write a query to calculate the average Loan Amount
select avg(LoanAmount) as AverageLoanAmount
from Loans

 

--Write a query to update the status of a specific Loan
update Loans set  LoanStatus = 'Approved' where LoanID = 80

 

--Write  a query to delete a customer and all assosciated
delete from Customers where CustomerID = '100'