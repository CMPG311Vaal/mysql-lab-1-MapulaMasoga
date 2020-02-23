mysql> create database BidvestBank;
Query OK, 1 row affected (0.52 sec)

mysql> use BidvestBank;
Database changed

mysql> create table BankBranch
    -> ( branch_name varchar(20) not null primary key,
    -> branch_city varchar(20) not null,
    -> assets double not null
    -> );
Query OK, 0 rows affected (0.56 sec)

mysql> create table Customer
    -> ( customer_name varchar(20) not null primary key,
    -> customer_street varchar(20) not null,
    -> customer_city varchar(20) not null
    -> );
Query OK, 0 rows affected (0.33 sec)

mysql> create table CustomerAccount
    -> ( account_number char(5) not null primary key,
    -> branch_name varchar(10),
    -> balance double
    -> );
Query OK, 0 rows affected (3.55 sec)

mysql> create table Loan
    -> ( loan_number char(10) not null primary key,
    -> branch_name varchar(10) not null,
    -> amount double not null
    -> );
Query OK, 0 rows affected (0.65 sec)

mysql> create table Depositor
    -> ( Customer_name varchar(20) not null primary key,
    -> account_number char(5) not null
    -> );
Query OK, 0 rows affected (0.41 sec)

mysql> create table Borrower
    -> ( customer_name varchar(20) not null primary key,
    -> loan_number char(10) not null
    -> );
Query OK, 0 rows affected (0.63 sec)

mysql> create table Employee
    -> ( employee_name varchar(20) not null primary key,
    -> branch_name varchar(20) not null,
    -> salary double not null
    -> );
Query OK, 0 rows affected (0.44 sec)
mysql> alter table BankBranch change branch_name branch_name varchar(25);
Query OK, 0 rows affected (0.31 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table CustomerAccount change branch_name varchar(25);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'varchar(25)' at line 1
mysql> alter table CustomerAccount change branch_name branch_name varchar(25);
Query OK, 0 rows affected (0.19 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table Loan change branch_name branch_name varchar(25);
Query OK, 0 rows affected (0.68 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table CustomerAccount change account_number account_number varchar(25);
Query OK, 0 rows affected (0.92 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table Depositor change account_number account_number char(10);
Query OK, 0 rows affected (1.02 sec)
Records: 0  Duplicates: 0  Warnings: 0
mysql> insert into CustomerAccount values('A-5324', 'Newtown', 500);
Query OK, 1 row affected (0.13 sec)

mysql> insert into CustomerAccount( 'A-5624', 'SunnySide', 400);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''A-5624', 'SunnySide', 400)' at line 1
mysql>
mysql> insert into CustomerAccount values('A-5624', 'Sunnyside', 400);
Query OK, 1 row affected (0.11 sec)

mysql> insert into CustomerAccount values( 'A-7794', 'Midrand', 900);
Query OK, 1 row affected (0.15 sec)

mysql> insert into CustomerAccount values( 'A-4467', 'Mabopane', 700);
Query OK, 1 row affected (0.12 sec)

mysql> insert into CustomerAccount values ('A-3546', 'Midrand', 700);
Query OK, 1 row affected (0.11 sec)

mysql> insert into CustomerAccount values ('A-3453' , 'Universitas', 700);
Query OK, 1 row affected (0.13 sec)

mysql> insert into CustomerAccount values ('A-2542', 'Mamelodi', 350);
Query OK, 1 row affected (0.13 sec)

mysql> insert into BankBranch values( 'Midrand', 'Johannesburg' , 7100000);
Query OK, 1 row affected (0.54 sec)

mysql> insert into BankBranch values( 'Newtown' 'Johannesburg', 9000000);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into BankBranch values('Newtown', 'Johannesburg', 9000000);
Query OK, 1 row affected (0.11 sec)

mysql> insert into BankBranch values( 'Mabopane', 'Pretoria', 400000);
Query OK, 1 row affected (0.10 sec)

mysql> insert into BankBranch values( 'Belgravia' , 'Kimberly', 3700000);
Query OK, 1 row affected (0.09 sec)

mysql> insert into BankBranch values( 'Sunnyside', 'Pretoria',1700000);
Query OK, 1 row affected (0.11 sec)

mysql> insert into BankBranch values( 'Amanzimtoti', 'Durban', 300000);
Query OK, 1 row affected (0.11 sec)

mysql> insert into BankBranch values ( 'Universitas', 'Bloemfontein', 21000000);
Query OK, 1 row affected (0.03 sec)

mysql> insert into BankBranch values ( 'Mamelodi', 'Pretoria', 8000000);
Query OK, 1 row affected (0.13 sec)
mysql> insert into Customer values( 'Modise', 'Spring' , 'George');
Query OK, 1 row affected (0.13 sec)

mysql> insert into Customer values('Brooks','Senator' , 'johannesburg');
Query OK, 1 row affected (0.13 sec)

mysql> insert into Customer values ('Jooste' 'North' , 'Kimberly');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into Customer values ('Jooste', 'North' , 'Kimberly');
Query OK, 1 row affected (0.03 sec)

mysql> insert into Customer values('Lombard', 'Sand Hill' , 'Nelspruit');
Query OK, 1 row affected (0.13 sec)

mysql> insert into Customer values('Mokwena', 'Walnut', 'Port-Elizabeth');
Query OK, 1 row affected (0.04 sec)

mysql> insert into Customer values ('Johnson','Mmabatho','Mafikeng');
Query OK, 1 row affected (0.13 sec)

mysql> insert into Customer values ('Johnson', 'Alma', 'Bloemfontein');
ERROR 1062 (23000): Duplicate entry 'Johnson' for key 'PRIMARY'
mysql> insert into Customer values('Johnsonn', 'Alma', 'Bloemfontein');
Query OK, 1 row affected (0.13 sec)

mysql> insert into Customer values ('Zwane' , 'Main', 'Mafikeng');
Query OK, 1 row affected (0.11 sec)

mysql> insert into Customer values('Lindsay', 'Park', 'George');
Query OK, 1 row affected (0.13 sec)

mysql> insert into Customer values('Smith', 'North', 'Kimberly');
Query OK, 1 row affected (0.35 sec)

mysql> insert into Customer values('Dlamini', 'Putnam', 'Port-Elizabeth');
Query OK, 1 row affected (0.11 sec)

mysql> insert into Customer values('Williams', 'Nassau', 'Giyane');
Query OK, 1 row affected (0.13 sec)

mysql> insert into Depositor
    -> values
    -> ('Johnson', 'A-5624'),
    -> ('Johnsonn', 'A-5624),
    '> '
    -> );
Query OK, 2 rows affected (0.03 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into Depositor values
    -> ('Johnson', 'A-7734'),
    -> ('Zwane', 'A-3546'),
    -> ('Lindsay', 'A-3453'),
    -> ('Smith', 'A-4467'),
    -> ('Dlamini', 'A-2542');
ERROR 1062 (23000): Duplicate entry 'Johnson' for key 'PRIMARY'
mysql> insert into Depositor values( 'Johnsoon' , 'A-7734');
Query OK, 1 row affected (0.13 sec)

mysql> insert into Depositor values('Lindsay', '3453');
Query OK, 1 row affected (0.13 sec)

mysql> insert into Depositor values('Smith', 'A-4467');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Depositor values('Dlamini', 'A-2542');
Query OK, 1 row affected (0.13 sec)

mysql>
mysql> insert into Borrower values('Modise', 'L-16');
Query OK, 1 row affected (0.03 sec)

mysql> insert into Borrower values('Jooste', 'L-93');
Query OK, 1 row affected (0.09 sec)

mysql> insert into Borrower values('Johnson', 'L-15');
Query OK, 1 row affected (0.14 sec)

mysql> insert into Borrower values('Jackson', 'L-14');
Query OK, 1 row affected (0.13 sec)

mysql> insert into Borrower values('Zwane', 'L-17');
Query OK, 1 row affected (0.13 sec)

mysql> insert into Borrower values('Smith', 'L-11');
Query OK, 1 row affected (0.03 sec)

mysql> insert into Borrower values('smith', 'L-23');
ERROR 1062 (23000): Duplicate entry 'smith' for key 'PRIMARY'
mysql> insert into Borrower values('Smit', 'L-23');
Query OK, 1 row affected (0.13 sec)

mysql> insert into Borrower values('Williams', 'L-17');
Query OK, 1 row affected (0.11 sec)

mysql>
mysql> insert into Employee values('Modise', 'Sunnyside', 1500);
Query OK, 1 row affected (0.03 sec)

mysql> insert into Employee values('Brown', 'SunnySide', 1300);
Query OK, 1 row affected (0.13 sec)

mysql> insert into Employee values('Gopal', 'Sunnyside', 5300);
Query OK, 1 row affected (0.13 sec)

mysql> insert into Employee values('Johnson', 'Newtown', 1500);
Query OK, 1 row affected (0.11 sec)

mysql> insert into Employee values('Loreena', 'Newtown', 1300);
Query OK, 1 row affected (0.11 sec)

mysql> insert into Employee values('Peterson', 'Newtown', 2500);
Query OK, 1 row affected (0.13 sec)

mysql> insert into Employee values('Rao', 'Austin', 1500);
Query OK, 1 row affected (0.05 sec)

mysql> insert into Employee values('Sato', 'Austin',1600);
Query OK, 1 row affected (0.11 sec)

