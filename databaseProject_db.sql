
Create database mhl
use mhl


CREATE TABLE Users(
userId int IDENTITY primary key,
fName varchar(20) not null,
lName varchar(20),
email varchar(50) not null,
pin varchar(20) not null,
dob varchar(20) ,
phoneNum char(12) not null,
city varchar(20),
accountType int not null
)





create procedure AddData
@UfName varchar(20),
@UlName varchar(20), 
@Uemail varchar(50),
@Upin varchar(20),
@Udob DATE,
@UphoneNum char(12),
@Ucity varchar(20),
@accountype int,
@Found int output

AS
BEGIN 
set @Found=0
IF ( @Uemail NOT LIKE'%.com')
begin
set @Found=1
end
IF ( @UphoneNum NOT LIKE'03%')
begin
set @Found=2
end
IF EXISTS(SELECT * FROM Users WHERE email=@Uemail)
begin 
set @Found=3
end
else
IF( @Uemail LIKE'%.com' AND @UphoneNum LIKE'03%')
begin
set @Found=4
if(@Udob='1900-01-01')
begin
set @Udob= NULL
end
if(@Ucity='0')
begin
set @Ucity= NULL
end
if(@UlName='')
begin
set @UlName= NULL
end
INSERT INTO Users (fName,lName,email,pin,dob,phoneNum,city,accountType)
VALUES (@UfName,@UlName,@Uemail,@Upin,@Udob,@UphoneNum,@Ucity,@accountype)
end
END

select * from Users


create procedure ULogin
@email varchar(50),
@password varchar (20),
@Found int output
AS
begin
declare @at int
IF EXISTS(SELECT * FROM Users WHERE email=@email AND pin=@password)
begin 
set @at=(SELECT accountType FROM Users WHERE email=@email)
if(@at=0)
begin
set @Found=1
end
if(@at=1)
begin
set @Found=2
end
end
else
begin
set @Found=0
end
end




CREATE PROCEDURE forgotpassword
@Uemail varchar (50),
@Upass varchar (20),
@Found int output
AS
BEGIN
set @Found=0
IF EXISTS(SELECT * FROM Users WHERE email=@Uemail)
begin
UPDATE Users
set pin=@Upass
WHERE email=@Uemail
end
else
begin
set @Found=1
end
END



SELECT * FROM Users

Insert into Users (fName,email,pin,phoneNum,accountType)
VALUES('Laiba','laiba@gmail.com','112233aA','033234981525',0)

Insert into Users (fName,email,pin,phoneNum,accountType)
VALUES('Maham','maham@gmail.com','112233aA','033234981525',1)

Insert into Users (fName,email,pin,phoneNum,accountType)
VALUES('Hadiya','hadiya@gmail.com','112233aA','033234981525',0)


CREATE TABLE Subscribe(
agentId int,
usrId int,
Primary Key (agentId,usrId)
)

select * from Users
select * from Subscribe

alter table Subscribe
   add constraint FK_ORDER_REFERENCE_afk foreign key (agentId)
      references Users (userId)

	  alter table Subscribe
   add constraint FK_ORDER_REFERENCE_ufk foreign key (usrId)
      references Users (userId)

Insert into Subscribe(usrId,agentId)
VALUES(1,2)
Insert into Subscribe(usrId,agentId)
VALUES(1,3)
Insert into Subscribe(usrId,agentId)
VALUES(3,1)
	 

Select * from Subscribe
SELECT * FROM Properties


CREATE TABLE Properties(
propertyId int IDENTITY primary key,
usrId int,
city varchar(20),
propertyType varchar(20),
propertyLocation varchar(20),
sqArea int,
price int
)

SELect * FROM Properties

alter table Properties
   add constraint FK_ORDER_REFERENCE_pufk foreign key (usrId)
      references Users (userId)

	  INSERT INTO Properties (usrId,city,propertyType,propertyLocation,sqArea,price)
	  VALUES(1,'Lahore','Flat','Johar Town',6000,10000)

	   INSERT INTO Properties (usrId,city,propertyType,propertyLocation,sqArea,price)
	  VALUES(3,'Lahore','Flat','Johar Town',6000,15000)
	   INSERT INTO Properties (usrId,city,propertyType,propertyLocation,sqArea,price)
	  VALUES(2,'Lahore','Flat','Faisal Town',6000,13000)
	  
	   INSERT INTO Properties (usrId,city,propertyType,propertyLocation,sqArea)
	  VALUES(1,'Lahore','Flat','Johar Town',6000)

	    INSERT INTO Properties (usrId,city,propertyType,propertyLocation,sqArea)
	  VALUES(1,'Islamabad','Flat','Johar Town',6000)
	  INSERT INTO Properties (usrId,city,propertyType,propertyLocation,sqArea)
	  VALUES(2,'Islamabad','Flat','Defence',6000)
	  INSERT INTO Properties (usrId,city,propertyType,propertyLocation,sqArea)
	  VALUES(2,'Islamabad','Flat','Iqbal Town',6000)
	  INSERT INTO Properties (usrId,city,propertyType,propertyLocation,sqArea)
	  VALUES(3,'Islamabad','Flat','Faisal Town',6000)

	    INSERT INTO Properties (usrId,city,propertyType,propertyLocation,sqArea)
	  VALUES(3,'Lahore','Flat','Johar Town',6000)

	 
CREATE TABLE Shortlist(
sUsrId int,
sPropertyId int
PRIMARY KEY (sUsrId,sPropertyId)
)

alter table Shortlist
   add constraint FK_ORDER_REFERENCE_sui foreign key (sUsrId)
      references Users (userId)

	  alter table Shortlist
   add constraint FK_ORDER_REFERENCE_p foreign key (sPropertyId)
      references Properties (propertyId)
	    Insert into Shortlist(sUsrId,sPropertyId)
VALUES(1,2)
  Insert into Shortlist(sUsrId,sPropertyId)
VALUES(1,1)
  Insert into Shortlist(sUsrId,sPropertyId)
VALUES(3,1)

 Insert into Shortlist(sUsrId,sPropertyId)
VALUES(3,11)

	  SELECT propertyId,city FROM Properties Join Shortlist ON Properties.propertyId=Shortlist.sPropertyId WHERE Shortlist.sUsrId=(SELECT userId FROM Users  WHERE email='laiba@gmail.com')

	  


	  SELECT propertyId,city FROM Properties where usrId=(SELECT userId FROM Users where email='laiba@gmail.com')

	  SELECT * FROM Users
	  SELECT * FROM Properties
	  
	                
				SELECT fName,lName,email,phoneNum,userId FROM Users where userId=(SELECT usrId FROM Properties where propertyId=7)
					
					SELECT propertyLocation,COUNT(*) AS Number FROM Properties GROUP BY propertyLocation




CREATE Procedure Subscribeproc
@email varchar(50),
@pid int
AS
BEGIN
declare @userid int
declare @subcribedid int
set @subcribedid=(SELECT usrid FROM Properties WHERE propertyId=@pid )
set @userid=(SELECT userId FROM Users where email=@email)

INSERT INTO Subscribe (usrId,agentId)
VALUES(@userid,@subcribedid)
END


CREATE Procedure Shortlistproc
@email varchar(50),
@pid int
AS
BEGIN
declare @userid int
set @userid=(SELECT userId FROM Users where email=@email)

INSERT INTO Shortlist(sUsrId,sPropertyId)
VALUES(@userid,@pid)
END


SELECT * FROM Shortlist
drop procedure UpdateData
create procedure UpdateData
@UfName varchar(20),
@UlName varchar(20), 
@Upin varchar(20),
@Udob DATE,
@UphoneNum char(12),
@Ucity varchar(20),
@email varchar(50),
@Found int output,
@accountType int output
AS
BEGIN 
declare @usrid int
declare @atype int
set @usrid=(SELECT userId FROM Users where email=@email)
set @atype=(SELECT accountType FROM Users where email=@email)
set @Found=0
set @accountType=0
if(@Ucity!=' ')
begin
UPDATE Users set city=@Ucity WHERE userId=@usrid
end
if(@UphoneNum!=' ')
begin
IF ( @UphoneNum NOT LIKE'03%')
begin
set @Found=2
end
else
begin
UPDATE Users set phoneNum=@UphoneNum WHERE userId=@usrid
end
end
if(@UfName!=' ')
begin
UPDATE Users set fName=@UfName WHERE userId=@usrid
end
if(@UlName!=' ')
begin
UPDATE Users set lName=@UlName WHERE userId=@usrid
end
if(@Upin!=' ')
begin
UPDATE Users set pin=@Upin WHERE userId=@usrid
end
if(@Udob!=' ')
begin
UPDATE Users set dob=@Udob WHERE userId=@usrid
end
if(@atype=0)
begin
set @accountType=1
end
if(@atype=1)
begin
set @accountType=2
end
END

declare @out int 
execute UpdateData
@Ucity='Lahore',
@Uemail=' ',
@Upin=' ',
@Udob=' ',
@email='laiba@gmail.com',
@UfName=' ',
@UlName=' ',
@UphoneNum=' ',
@Found=@out OUTPUT






SELECT * FROM Users


CREATE Procedure DeleteFromShortlistTable
@email varchar(50),
@pid int
AS
BEGIN
declare @userid int
set @userid=(SELECT userId FROM Users where email=@email)

delete from Shortlist where Shortlist.sUsrId=@userid AND Shortlist.sPropertyId=@pid
END

CREATE Procedure Unsubscribeproc
@email varchar(50),
@pid int
AS
BEGIN
declare @userid int
set @userid=(SELECT userId FROM Users where email=@email)

Delete FROM Subscribe where Subscribe.usrId=@userid AND Subscribe.agentId=@pid
END

SELECT * FROM Shortlist

CREATE TABLE Offer(
propId int,
OuserId int,
Oprice int

PRIMARY KEY (propId,OuserId)
)

alter table Offer
   add constraint FK_ORDER_REFERENCE_o foreign key (OuserId)
      references Users (userId)
	

	 alter table Offer
   add constraint FK_ORDER_REFERENCE_k foreign key (propId)
      references Properties (propertyId)

	  SELECT * FROM Users


	    CREATE PROCEDURE placeOfferProc
	  @pid int,
	  @uemail varchar(50),
	  @price int,
	  @found int OUTPUT
	  AS
	  BEGIN
	  set @found=0
	  declare @origprice int
	  declare @usrid int
	  set @usrid=(SELECT userId FROM Users where email=@uemail)
	  set @origprice=(SELECT price FROM Properties where propertyId=@pid)
	  if exists (SELECT * from Offer WHERE OuserId=@usrid AND propId=@pid)
	  begin
	  if(@price>=@origprice)
	  begin
	  Update Offer set Oprice=@price WHERE OuserId=@usrid AND propId=@pid 
	  end
	  else
	  begin
	  set @found=1
	  end
	  end
	  else
	  begin
	  if(@price>=@origprice)
	  begin
	  INSERT INTO Offer(OuserId,propId,Oprice)
	  VALUES (@usrid,@pid,@price)
	  end
	  else
	  begin
	  set @found=1
	  end
	  end
	  END


	  CREATE PROCEDURE ShowOffersProc





	  SELECT * FROM Offer
	  SELECT * FROM Properties
	  SELECT * FROM Users



	 
	 
	 SELECT propId,Oprice FROM Offer WHERE propId IN ( SELECT propertyId FROM Properties WHERE usrId=( SELECT userId FROM Users where email='maham@gmail.com'))

	
	 CREATE PROCEDURE AcceptOfferProc
	   @propId int,
	  @Oprice int,
	  @usrid int
	 AS
	 BEGIN
	  UPDATE Properties set usrId=@usrid where propertyId=@propId
	  DELETE FROM Offer WHERE propId=@propId
	  DELETE FROM Shortlist WHERE  sPropertyId=@propId
	 END

	 select * from Properties
	  drop procedure RejectOfferProc
	  CREATE PROCEDURE RejectOfferProc
	  @propId int,
	  @Oprice int,
	  @usrid int
	 AS
	 BEGIN
	 DELETE FROM Offer WHERE OuserId=@usrid AND propId=@propId
	 END

	 INSERT INTO Offer (propId,OuserId,Oprice)
	 Values(4,1,80000)

	 SELECT * FROM Offer
	 SELECT * FROM Properties

	 CREATE TABLE Rate(
	 )