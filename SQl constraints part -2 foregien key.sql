create database hello;

use hello;
create table test3(pid int primary key, pname varchar(20), amount int); 

create table orders3(oid int , city varchar(50), product_id int,
constraint april10_orders_pk_oid primary key(oid),
constraint april10_orders_fk_product_id foreign key(product_id) references test3(pid));

desc test3;
desc orders3;

-- firstly  parent table
insert into test3 values(10,"abc",600);
select * from test3;
-- secondly  child table
insert  into orders3 values (1,"xyz",10);

-- auto_increment
create table gender(id int primary key auto_increment, gender varchar(6));
insert into gender(gender) values("F");

select * from gender;

-- single record delete
delete from gender where id=1;
 
-- all delete is dml
-- delete from gender;

-- drop table is ddl and it is faster than delete

-- truncate is ddl function drop table and then recreate structure(table) again.
