create database BANK;
use bank;
create table customerdetail(Acc_no int primary key , Acc_name varchar(50) not null,pin_no int unique,pan_no varchar (8)not null unique,balance int not null,address varchar(20),acc_type varchar(20)not null) ;
create table employees(e_id int primary key,bank_name varchar(20),IFSC_CODE int not null,branch varchar (10) not null,Phone_no int not null,pincode int not null,e_salary int not null);
insert into employees values(112233,"Indian",695014,"uniquesri",6379,094856,20032003);
insert into employees values(222334,"canara",21202,"vasanth",93608,82655,20022003);
insert into employees values(333456,"SBi",39303,"unique",686905,606202,21000);
insert into customerdetail values(0001,"siva",1511,"Siva123",25000,"chennai","benificiary");
insert into customerdetail values(0002,"Sri",1212,"Sri123",250000,"madurai","benificiary");
insert into customerdetail values(0003,"vinoth",1410,"vino123",50000,"CBE","benificiary");
insert into customerdetail values(0004,"yash",1507,"ya123",250090,"salem","Joint");
select * from customerdetail;
select * from employees;
SELECT
  customerdetial.Acc_no,
  customerdetial.Acc_name,
  customerdetial.balance,
  employees.bank_name,
  employeess.IFSC_CODE
FROM
  customerdetial
INNER JOIN
  employees
ON
  customerdetial.Acc_no = employees.e_id;