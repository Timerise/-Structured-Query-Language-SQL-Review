-- Written by EG Timerise: A applied review of SQL query lanaguage
-- Part two  of this basic sql review 
-- After the full review , which will be a lot more notes
--Will start conducting SQL query examples on real datasets provided via kaggle.com and other sources

-- This review is based (although modifed) from the youtube series :
-- https://www.youtube.com/watch?v=ZNObiptSMSI&list=PL08903FB7ACA1C2FB
-- All of my training on SQL was mostly theory before, so this was a big help in moving to the applied side 
-- If your trying to dive into the applied side of sql, the video link above is really good


-- Lets start were we let off in sql_query_review_part_1
-- Primary keys= used to uniquely idenfiy a record in a table

-- Foreign keys help keep the database integrity, by blocking some out of range data from being stored in their columns
-- This is super helpful, when someone makes an entry error (The system will not save said error if its out of range)

--Lets create a Table with sql quries!

-- *Recall we have already learn how to create a base database
-- Its pretty much the same method as creating a database
create Database Project1

-- * We are going to create tables with some different column types

-- There are a lot of variable types we can use:
-- bigint, binary(50) , char(10) , date ,float, hierachyid, etc.
-- recall the basics: 
-- int =integer  , -4,-3,-2,-1,0,1,2,3,...etc
-- float , 1/4 ,7/9, .4, 0.87 ,-0.78 , .....etc
-- char=character , numbers, letters, symbols

-- You can check them out by using the built in functions of Microsoft SQL server managment 


-- So first we want to tell our system which database we want to use
-- placing brackets around the database name will avoid it being read as something else
-- We can use the 'use' and 'go' command to direct which database we want to use

use [Project1]
go
Create Table tbl_one1
(
ID int not null primary key,
churn binary (1) not null,
cash_amount float not null,
payment_typeID nvarchar(12) not null
)
--Note that the table is still actually empty, other than the column types 
-- Also, wouldn't it make sense to have payment_typeID be a foregin key?
-- There can only be so many types of payment methods

-- Lets make payment_type as foreign key from another table
-- First we need to make a table were payment_typeID is a primary key
create table tbl_two2
(
payment_type nvarchar(12) not null  primary key
)

-- Now lets create a foregin key contraint via sql!
alter table tbl_one1 add constraint tbl_one1_payment_typeID_FK
foreign key (payment_typeID) references tbl_two2(payment_type)

-- Note: We could have named the contraint any they we wanted to
-- Now values will be checked for the foreign key in its primary key table
-- If there is a foreign key contraint error, the data will not be saved
-- data base integrity achieved !!

