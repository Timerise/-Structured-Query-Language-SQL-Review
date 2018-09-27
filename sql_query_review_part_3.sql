-- Written by EG Timerise: A applied review of SQL query lanaguage
-- Part three  of this basic sql review 
-- After the full review , which will be a lot more notes
--Will start conducting SQL query examples on real datasets provided via kaggle.com and other sources

-- This review is based (although modifed) from the youtube series :
-- https://www.youtube.com/watch?v=ZNObiptSMSI&list=PL08903FB7ACA1C2FB
-- All of my training on SQL was mostly theory before, so this was a big help in moving to the applied side 
-- If your trying to dive into the applied side of sql, the video link above is really good


-- First lets view our perviously empty tables from the project1 database
-- Recall the 'use' and 'go'  commands
-- We will also be using the select command to select said tables
-- Mircosoft SQL server, we should see two windows pop up below the query after executing
use [Project1]
go

select * from tbl_one1
select * from tbl_two2

-- recall for all my columns in both data sets, we place a contraint against nulls

--Recall that both our tables are empty, lets fix this by adding some variables
-- we will use the insert command to add our desired information

insert into tbl_two2 (payment_type) values('cash'),('credit card'),('debit card')


-- recall that tbl_two2 houses a primary key , which is a forgein key for tbl1_one1
-- So, we have to have something in tbl_two2 if we want to conduct inputs into tbl_one1


insert into tbl_one1 (ID,churn,cash_amount,payment_typeID) values (1,0,50.46,'cash')

-- * Notice how I had to use () to showcase the various in rowws in tbl_two2 
-- For tbl_one1 I just used one () , because I was only adding one record

-- by using the 'select' 'from' commands again, we can see the changes done with the previous code

select * from tbl_one1
select * from tbl_two2


-- Lets add a few  default constraints
-- recall that we blocked the use of null inputs,
-- with default constraints we can create faster input queries
-- (assuming our source input information is heavy towards  written defalut values)


