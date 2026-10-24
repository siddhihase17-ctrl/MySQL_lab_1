-- QUE 1
create database CompanyDB;
use CompanyDB;

-- QUE 2
create table Employees(
EmpID int primary key,
Name varchar(200),
Department varchar(100),
Salary float);
select * from Employees;

-- QUE 3
create table students(
StudentID int,
Name varchar(200),
Age int,
Grade varchar(5));
select * from students;

-- QUE 4
alter table Employees add column Email varchar(50);

-- QUE 5
alter table students drop column Grade;

-- QUE 6
rename table Employees to Staff;
select * from Staff;

-- QUE 7
truncate table students;

-- QUE 8
drop table students;

-- QUE 9
create table Customers(
CustomerID int primary key);
select * from Customers;

Create table orders(
CustomerID int,
foreign key (CustomerID) references Customers(CustomerID));
select * from orders;

-- QUE 10
create table products(
price int check(price>0));
select * from products;

-- QUE 11
create table users(
Username varchar(200) unique not null);
select * from users;

-- QUE13
create table Dates(
JoinDate date default(17/07/2006));
select * from Dates;









