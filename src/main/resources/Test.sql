select user0_.USER_ID as USER1_2_, user0_.ADDRESS as ADDRESS2_, user0_.CITY as CITY2_, user0_.EMAIL as EMAIL2_, user0_.FIRSTNAME as FIRSTNAME2_, user0_.LASTNAME as LASTNAME2_, user0_.MOBILE as MOBILE2_, user0_.PASSWORD as PASSWORD2_, user0_.POSTL_CD as POSTL9_2_, user0_.STATE as STATE2_, user0_.TELEPHONE as TELEPHONE2_, user0_.USER_NAME as USER12_2_ from USERS user0_ where user0_.USER_NAME='admin'
select * from user;
create DATABASE store;
SHOW DATABASES;
drop table employee;
drop table invoice_product;
drop table invoice;
drop table product;
drop table tax;
drop table user_type;
drop table user;
drop table Customer;
drop table catgry;

CREATE TABLE catgry(CATGRY_ID INT NOT NULL ,NAME VARCHAR(50) NOT NULL,DESCRIPTION VARCHAR(225) ,PRIMARY KEY (CATGRY_ID))
FOREIGN KEY (P_Id) REFERENCES Persons(P_Id)

select NAME from PRODUCT where NAME like 'n%';

select * from invoice;

select * from USERS;
select * from DONATION;
insert into `USERS` (`USER_ID`, `ADDRESS`, `CITY`, `EMAIL`, `FIRSTNAME`, `LASTNAME`, `MOBILE`, `PASSWORD`, `POSTL_CD`, `STATE`, `TELEPHONE`, `USER_NAME`) values(1, 'address test', 'normal', 'test@gmail.com', 'test fname', 'test lname', '1234567890', 'admin', '61761', 'IL', '1234567890', 'admin')