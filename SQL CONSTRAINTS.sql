-- constrainst => set of e=rules restrict unwanted data to be insert  in table --
-- create databases--
create database if not exists april10;
use april10;

#ddl
create table employee(id int, fname varchar(20));

describe  employee;
select * from employee;
 
 # DML - insert , update , delete 
insert into employee(id , fname) values(1,"abc");
insert into employee values(2,"def");
insert into employee values(3,null);

insert into employee(fname) values("tushar");
select * from employee;

-- to remove table structure--
show tables;
drop table employee;

-- not null --
create table if not exists xyz(id int not null , name varchar(20) );
insert into xyz (id,name) values(1,"abc");
insert into xyz (id,name) values(2,"def");
insert into xyz (id,name) values(3,"ghi");
select * from xyz;


-- how to give name to contrainst--
create table if not exists 
xyz2(id int constraint xyz_id_not_null not null , name varchar(20) );

-- default null ==Sets a default value for a column if no value is specified --
create table if not exists xyz1(id int not null , name varchar(20) default "regex");
insert into xyz1(id) values(1);
select * from xyz1;

-- unique constraint --all values in a column are different

create table yash(id int , email varchar(20) default "abc@gmail.com" unique);
desc yash;
insert into yash (id,email) values(1,"aman@gmail.cpm");
insert into yash (id,email) values(2,"aditya@gmail.cpm");  
insert into yash(id,email)  values (3,null);
select * from yash;

-- check constraint == Ensures that the values in a column satisfies a specific condition--
create table house(id int,amount int check (amount>1000));
insert into house values(1,2000);
select * from house;


create table house(id int,amount int check (amount>1000));
insert into house values(1,null);
select * from house;


create table student2 (id int not null , name varchar(20),
email varchar(20) unique, address  varchar(20) unique, gender  varchar(6) check (gender="Male" or gender="Female" ));
insert into student2(id, name , email, address , gender) values (1, "Avni","avni12@gmail.com","jaipur", "Male");
insert into student2(id, name , email, address , gender) values (2, "Anjali","anjali12@gmail.com","jodhpur", "Female");
insert into student2(id, name , email, address , gender) values (1, "Avni","avni12@gmail.com","jaipur", "other");
select * from student2;

-- primary key--
create table student1(id int primary key, name varchar(20),
email varchar(20) unique);

insert into student1(id, name, email) values(1, "jyoti","jyoti12@gmail.com");
insert into student1(id, name, email) values(1, "jyoti2","jyoti123@gmail.com");
select * from student1;



