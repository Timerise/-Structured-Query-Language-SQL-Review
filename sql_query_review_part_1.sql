-- Written by EG Timerise : A applied review of SQL query lanagure 
-- Just a quick review coding 
-- This review is based (although modifed) from the youtube series :
-- https://www.youtube.com/watch?v=ZNObiptSMSI&list=PL08903FB7ACA1C2FB
-- All of my training on SQL was mostly theory before, so this was a big help in moving to the applied side 
-- If your trying to dive into the applied side of sql, the video link above is really good

-- Recall common local server names :  '.'  ,'(local)' , and '127.0.0.1'
-- '127.0.0.1' is the common loop back ip address used 
-- We are going to use the Database Engine for this tutorial 
-- We will dive into analysis services in a later tutorial
-- Since all of this will be done on our local computer, we will use windows authentication to log in
-- We could use sql server autherication, but we would have to remember another password.
-- Anyway... lets get started.

-- Lets first cover how to create a new database (user defined database)!
 Create Database Project1

 -- After you type in the above code, hit execute.
 -- You will have to refresh the systemm to see the database in the system
 -- You just created two new files 
 -- 1.) Project.mdf , the data file containing your information 
 -- mdf= master data file
 -- 2.) Project_log.LDF , a 'transcation log file' used for recovery of a database
 -- LDF=log data file

 -- Now lets rename the database , there are two methods to doing this with queries
 -- 1.) Using alter database command
 Alter Database Project1 Modify Name= project2
 -- 2.) using a 'system stored procedure'
-- exec sp_rename 'project2' ,'Project3'

 -- Now lets review how to delete a database
 -- *Special note about what should not be happening , when you want to delete a database
 -- The database shouldnt' be in use when you try to delete said database
 -- You must put the database into single user form first, to avoid the previous statement
 Alter database project2 set single_user with rollback immediate
 -- rollback forces all currently running quries to close 

 drop database project2

 -- Now lets go over creating tables with SQL quries
-- Primary keys = used to uniquely idenfiy an a record
-- Foreign keys = are primary keys of another table
-- Foreign keys help keep the database integrity, by blocking some out of range data from being stored in its column
