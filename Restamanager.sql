create	 database restpos;
use restpos;
create table users_login (
  `uid` INT NOT NULL AUTO_INCREMENT,
  `uname` VARCHAR(45) NOT NULL,
  `upass` VARCHAR(45) NOT NULL,
   PRIMARY KEY (`uid`));
   desc users_login;
 insert into users_login values( 1,'Admin','root');  
 select * from users_login;
 create table menu(
 `id` INT NOT NULL AUTO_INCREMENT,
 `Foodname` VARCHAR(45) NOT null,
 `Quantity`VARCHAR(50) NOT NULL,
 `Price` DECIMAL(10,4),
  PRIMARY KEY (`id`));
  insert into menu values( 1,'idli','1',20); 
   insert into menu values( 2,'dosa','2',20);  
   insert into menu values( 3,'Avial','1',60); 
   insert into menu values( 5,'Avial2','1',60); 
  select * from menu;
  ALTER TABLE Customers AUTO_INCREMENT = 1;
 
  select * from Orders;
 
select * from Customers;
 
  drop table menu;
  drop table Customers;
  create table Orders(
   `Orderid` INT NOT NULL AUTO_INCREMENT,
 `Foodname` VARCHAR(45) NOT null,
 `Quantity`VARCHAR(50) NOT NULL,
 `Tableno` INT NOT NULL,
  `Custemail`VARCHAR(50) NULL,
 
  PRIMARY KEY (`Orderid`)
  );
  create table Customers(
   `Custid` INT  AUTO_INCREMENT,
 `CustName` VARCHAR(45) NOT null,
 `Custemail`VARCHAR(50) NOT NULL,
 PRIMARY KEY (`Custid`)
  ); 
select Orderid,Orders.Foodname,Custid,CustName,Orders.Custemail from Orders,Customers
where  Orders.Custemail = 'jatin096@gmail.com'  AND Orders.Custemail=Customers.Custemail ;




Select Orderid,Orders.Foodname,Orders.Quantity,Tableno,Custemail,menu.Price from Orders,menu WHERE menu.Foodname=Orders.Foodname
 
  