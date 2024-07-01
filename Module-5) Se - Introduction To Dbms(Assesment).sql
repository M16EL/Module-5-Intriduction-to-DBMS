create database Assesment;

use Assesment;

create table Customer (
    customer_id int,
    cust_name text,
    city text,
    grade int,
    salesman_id int
    
);

insert into Customer values
(3002,"Nick Rimando","New York",100,5001),
(3007,"Brad Davis","New York",200,5001),
(3005,"Graham Zusi","California",200,5002),
(3008,"Julian Green","London",300,5002),
(3004,"Fabian Johnson","Paris",300,5006),
(3009,"Geoff Cameron","Berlin",100,5003),
(3003,"Jozy Altidor","Moscow",200,5007),
(3001,"Brad Guzan","London",null,5005);

select * from Customer;

create table Salesman(
    salesman_id int,
    name text,
    city text,
    commision float
);

insert into Salesman values
(5001,"James Hoog","New York",0.15),
(5002,"Nail Knite","Paris",0.13),
(5005,"Pit Alex","London",0.11),
(5006,"Mc Lyon","Paris",0.14),
(5007,"Paul Adam","Rome",0.13),
(5003,"Lauson Hen","San Jose",0.12);

-- From the above given tables write a SQL query to find the salesperson(s) and the
-- customer(s) represented here. Return the Customer Name, City, Salesman,commission.


select * from Salesman;

SELECT 
    c.cust_name AS Customer_Name,
    c.city AS Customer_City,
    s.name AS Salesman_Name,
    s.commision AS Salesman_Commission
FROM 
    Customer c
JOIN 
    Salesman s
ON 
    c.salesman_id = s.salesman_id;




