
-- /*
-- ------mysql------

-- <--------->types of sub languages<--------->



-- 1.) Data Definition language

--  --->Creation of database
--      Creation of tables
--      


--      command ---> 1.) create database database-name   (non-case-sensitive)    ---> create a database
--                   2.) use database-name         --->move to a particular database
--                   3.) drop database database-name     ---->delete database
--    
--                   4). create table table-name (
--                     <column-name> datatype,
--                     <column-name> datatype,
--                     );


--                    alter keyword --->  adding new column alreday existing table
--  
--                   5.)  alter table table-name add newcloumn-name data-type

--                   how to change a column in a table in a databale

--                   6.)  alter table table-name change column present-column-name new-column-name datatype

--                   how to delete a column in a table in a databale

--                   7.) alter table table-name delete column present-column-name

--                   how to delete a table in a databale

--                   method : 1   DROP ---> loss it's Structure 
--                            2    Truncate ---> only rows will delete
--                   8.)  truncate table table-name
--                        drop table table-name


-- 2.) Data Manipulation language

--  ---->Insert 
--       Update
--       Delete

--        ----> command 
--                how to insert a data into table in a database

--                1.) insert into table-name (field names) or empty(all fields) values (no of values to selected fields),(),()
                       
--                 SET SQL_SAFE_UPDATES = 0      by default it will through error while updating   we have to run this command 
                       
--                how to update particular data in a table 

--                2.)  Update table Data

--                update table-name set modified-field = value where address

-- --              update student set student_name = "Vicky" where student_id = 2;
       

-- --             3.) Delete data in the Table
 
-- 	                  delete from student where student_age >25;

--                    delete from table-name where cause (condition)  


                  
-- 3.) Data Query language


-- ---->     Data Acess
--           SELECT-->keyword

--             1.)select query :

--             select * from table-name   return entire table;
--             * ---->  write required columns in place of It





-- 4.) Transaction language

--     --->  SAVE
--           COMMIT



-- <--------->Data Types in RDBMS<--------->


-- 1.) INT ---> Numbers

--     TINYINT ----> small 
--     INT     ----> medium
--     BIGINT  ---->big


-- 2.)  DECIMAL (p,q) -----(10,2)     10.26 ,   15243.99  etc
--      no of digits to left of point --->p
--      no of digits to right of point --->q




-- 3.)  char(20) --> 20 length of string   ---> fixed length
--      nchar(20) -- unicode

--      cat --> remaining 17 char spaces will be wasted

--      varchar(20)---> variable length
--      nvarchar(20) -- unicode
--    
--      cat --> remaining 17 char spaces will not wasted



--   
-- 4.)  TIME (0-7) 
--      HR:MIN:SEC :  1254584  milli seconds




-- 5.)  DATE 
--      YEAR : MONTH : DAY
--     
--     

-- <-----commands---->

-- Primary Key :

--   we will create over a column it will be unique value for a row or recording
--   non duplicate value 
--   no null value


-- create table student (
--  id int auto_increment,
--  name varchar(30),
--  gmail varchar(30),
--  primary key(id)
-- );


-- create table certificate (
-- id int,
-- yesr int,
-- sem int,
-- primary key(id)
-- );

-- insert into student values (2 , "student2","a11@gmail.com")
 
 
 
 
-- foreign Key

-- only primary key values are accepted 
-- null values accepted


-- create table certificate_log (
-- student_id int,
-- certificate_id int,
-- received_date date,
-- foreign key(student_id) references student(id),
-- foreign key(certificate_id ) references certificate(id)
-- );


-- insert into certificate values (102 , 1 ,2);


-- insert into certificate_log values (4,101,'2020-10-28'),(2,102,'2020-10-28');

-- insert into certificate_log values (2,103,'2020-10-28');  ---- negative scenario for foreign key 

-- constrains 
-- not null
-- unique
-- check



-- create table student (
-- id int auto_increment,
-- name varchar(30) not null,
-- gmail varchar(30) not null,
-- age int,
-- unique (gmail),
-- check(age>12),
-- primary key(id)
-- );

-- insert into student (name , gmail , age) values ("student1" , "a@gmail.com" , 18) , ("student2" , "a11@gmail.com" , 25) , ("student3" , "a123@gmail.com" , 18);



-- where clause and Select Query Explanation

-- Filtering the Table


-- create table student(
-- id int auto_increment,
-- name varchar(30),
-- age int,
-- marks decimal(10,2),
-- gender varchar(30),
-- primary key(id)
-- );


-- insert into student (name , age , marks , gender) values ("student1",18,95.00,"male") , ("student2",19,90.00,"male") , ("student3",17,84.00,"female") , ("student4",18,75.00,"male")
 -- ,("student5",16,75.00,"male") , ("student6",20,95.00,"female") , ("student7",15,80.00,"male") , ("student8",15,70.00,"male");


-- where equality = , less than < or greater than >  , between , like , not equal to <>

-- select * from student where age > 18;

-- select * from student where age = 18;

-- select * from student where age < 20;

-- select * from student where age < 20 and age > 17;
 
-- select * from student where age in (17,18,19);

-- select * from student where name like "%1";   ---> % means anything infront of 1

-- select * from student where name like "%1%";  --> name which having 1 as midlle of anything

-- select * from student where age <> 18; --> Not Equal To 

-- Aggregate functions
         -- count
         -- max
		 -- min
         -- avg
         -- distinct

-- select count(*)  from student
-- select count(*) as no_of_Students from student where age=18

-- select avg(marks) as average from student


-- select sum(marks) as Totalsum from student

-- select max(marks) as max from student

-- select min(marks) as minimum from student

-- select distinct age from student

-- select avg(distinct age) from student


-- joins

	-- inner join
    -- left join
    -- right join
    -- full outer join
    -- self join
    
-- inner join 

-- create table ncc(
-- id int,
-- ncc varchar(30)
-- );
-- create table student(
-- id int,
-- name varchar(30),
-- age int
-- );
-- insert into student values (1,"student1",18), (2,"student2",17) , (3,"student3",18),(4,"student4",17),(5,"student5",19),(6,"student6",18),(7,"student7",17),(8,"student8",18),(9,"student9",17),(10,"student10",20)

-- insert into marks value (1,89,6),(2,95,3),(3,76,9),(4,80,8),(5,69,10),(6,92,4),(7,90,5),(8,82,7),(9,97,2),(10,98,1)
   
-- insert into  sports values (1,"Cricket"),(3,"Vollyball"),(5,"Basketball"),(6,"Cricket"),(7,"Vollyball"),(10,"Basketball")

-- insert into ncc values (1,"ncc"),(2,"nss"),(3,"ncc"),(6,"nss"),(8,"nss"),(10,"ncc")

-- select * from student as t1 inner join marks as t2 on t1.id = t2.id

-- select t1.id,t1.name,t2.marks,t2.ranks from student as t1 inner join marks as t2 on t1.id = t2.id

-- select t1.id,t1.name,t1.age,t2.sports from student as t1 inner join sports as t2 on t1.id=t2.id

-- left join

-- select * from student as t1 left join ncc as t2 on t1.id = t2.id

-- right join

-- select * from sports as t1 right join ncc as t2 on t1.id = t2.id

-- Full Outer join
     -- in mysql this feature is not support
     
-- select * from sports as t1 full outer join ncc as t2 on t1.id = t2.id     

-- self join

-- order By clause in sql

-- create table student (
--  id int ,
--     name varchar(30),
--  age int,
--  marks int,
--  sports varchar(30)
-- );




-- insert into student values (1,"student1",18,89,"cricket"), (2,"student2",17,78,"football") , (3,"student3",18,90,"basketball"),(4,"student4",17,90,"cricket"),(5,"student5",19,56,"basketball"),(6,"student6",18,76,"basketball"),(7,"student7",17,45,"cricket"),(8,"student8",18,90,"cricket"),(9,"student9",18,65,"football"),(10,"student10",17,97,"cricket")


-- select name , age , marks from student order by marks    by default asending order       asc

-- select name , age , marks from student order by marks desc       desending order

-- select name , age , marks from student order by marks desc, age      when marks are  equal age will be factor          

-- select name , age , marks from student order by marks desc, age , name     when marks and age are equal then name will be factor

-- Group By clause

-- select sports  from student group by sports

-- select sports , count(name) as no_of_Students  from student group by sports

-- select sports , count(name) as no_of_Students , avg(marks) as Avg_Marks from student group by sports

-- select sports , count(name) as no_of_Students , avg(marks) as Avg_Marks from student group by sports order by avg(marks) asc

-- select sports , age  from student group by sports , age

-- select sports , age , count(age) from student group by sports , age




-- Having in SQL                     -----> Applied on Groups which are formed by group by 

-- select sports , count(name) as no_of_Students , avg(marks) as Avg_Marks from student group by sports having no_of_Students >= 3 

-- select sports , count(name) as no_of_Students , avg(marks) as Avg_Marks from student group by sports having no_of_Students >= 3 and Avg_Marks>80


-- Ranks In mySQL

-- 1.) rank()     function     ---duplicates ranks , 1 2 2 2 5 like this skiipping 3 , 4 ranks                  rank()  over(condtion)

-- 2.) row_number()   function    

-- 3.) dense_rank()   function  -- duplicates ranks , 1 2 2 2 3     perfect

-- select name , marks , rank() over(order by marks desc) as Ranks from student 

-- select name , marks , rank() over(order by marks desc , age asc) as Ranks from student

-- select name , marks , rank() over(order by marks desc , age asc , name asc) as Ranks from student 

-- select name , marks , row_number() over(order by marks desc) as Ranks from student 

-- select name , marks , dense_rank() over(order by marks desc) as Ranks from student 






-- Union and Intersection
    -- to combine or intersect of 2 select queries 
    -- union  
        -- it will combine total rows in two select queries
        -- no duplicartes
	-- intersect
        -- it will display common rows between two select queries
        
        
        
        
-- select * from student where sports = "cricket" union select * from student where sports = "football"   

-- select * from student  union select * from student where sports = "football"     



-- select * from student intersect select * from student where sports = "cricket"



-- sub queries in SQL

   -- 1.) Normal sub queries
   -- 2.) Co-related sub queries
   
   
-- alter table student change column sports gender varchar(30)  
 -- SET SQL_SAFE_UPDATES = 0 
-- update student set gender = "female" where id>5
-- select * from student

-- problem  
     -- i want to find to number of male students who have marks more than average marks of female students
     
     
     
	
-- select avg(marks) from student where gender ="female"
--
-- Normal sub queries
-- select * from student where gender = "male" and marks > (select avg(marks) from student where gender ="female")

--
--    Co-related sub queries


-- problem 

   -- find the nth highest salary of the employee table
   

-- select marks as Nth_highest_marks from student as t1 where 4 = (select count(*) from student as t2 where t1.marks < t2.marks) 
   
-- substring


-- select * from student order by substring(name,length(name)-3,3)


-- Normalization
   -- divide data into multliple data
   -- 1 NF    normal form
       -- signle value in a cell
   -- 2 NF 
       -- should follow 1 NF
       -- No partial dependencies
       -- table has prime attributes and non-prime attributes ,
   -- 3 NF
       -- table should follow 2 NF , it should have transitive dependencies
       
       -- transitive dependencies :
               -- if in a table non-prime attribute depend on another  non-prime attribute
   -- BCNF 
       -- it should follow 3 NF
       -- prime attribute should not depend on non - prime attribute
       
       

-- views in SQL
    -- virtual table 
    -- it is used to make secure acess of the data
    -- simple way of accessing data

-- create view my_view as select id , name , age from student where gender = "male"

-- select * from my_view



-- stored procedure
   -- storing a common use query for future purpose
-- delimiter //
-- create procedure student_Pro () begin select id , name , age from student where gender="male" and marks > 85 ;
-- end //

-- call student_Pro()

-- delimiter //
-- create procedure para_procedure(p_gender varchar(30),p_age int )
-- begin select id , name , age from student where gender = p_gender and age < p_age;
-- end //

-- call para_procedure("male" ,78)

-- indexes in SQL


-- create index index-name on table-name 
-- create index marks_index on student (marks asc)








