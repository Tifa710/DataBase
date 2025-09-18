create database Company
use Company
create table Employee (
id int not null,
f_name varchar (100),
salary decimal
)

Alter table Employee 
Add Department varchar(50)

Alter table Employee 
drop column salary

execute sp_rename 'Employee.Department','Deptname','Column'

create table project (
Projectid int identity,
projectname varchar (50)
)

alter table Employee
alter column id int not null 

alter table Employee 
add constraint pk_emp primary key (id) 

alter table Employee
add constraint emp_name unique (f_name)

create table Customer (
id int ,
F_name varchar(50),
L_name varchar(50),
email varchar(50),
status varchar(50)
)

alter table Customer
add constraint C_name unique (F_name , L_name)

create table orders (
Order_id int,
Customer_id int,
orderdate datetime,
total_amount decimal check (total_amount >0)
)

create schema Sales

alter schema Sales TRANSFER dbo.orders

execute sp_rename 'Sales.orders','SalesOrders'