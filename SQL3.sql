use sakila;
show tables;

describe actor;
desc actor;

select first_name, lower(first_name), upper(first_name)
from actor;

select first_name, last_name,
concat (first_name,'' , last_name,actor_id) from actor;


select  first_name, substr(first_name,2,4) from actor;

select  first_name, substr(first_name,-2) from actor;

select  first_name, substr(first_name,-4,2) from actor;

select first_name from actor
where first_name like concat ("E" ,"%");

-- funtcion istr
select first_name , instr(first_name ,"E")
from actor;

select first_name , instr(first_name ,"EE")
from actor;

select first_name , instr(first_name ,"OP")
from actor;

select first_name , locate("E",first_name )
from actor;

select first_name , locate("E",first_name ,2)
from actor;

select first_name , locate("E",first_name ,3)
from actor;

select first_name, length (first_name)
from actor;

select first_name, "hello"
from actor;


select "hello" from dual;

select 1+2 from dual;

select length("T") from dual;

select char_length ("T") from dual;

select char_length ("TF") from dual;

select char_length("IGHBJN") from dual;

select trim("   hello") from dual;

select trim(leading " " from    " hello   ") from dual;

select trim(trailing " " from    " hello   ") from dual;

select trim( both "x" from "xxxhelloxx ") from dual;     



