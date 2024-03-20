use sakila;
show tables;

select first_name , substr(first_name , 4 ,2) 
from actor;


select first_name , instr(first_name , "OP" )
from actor;

select first_name , length(first_name )
from actor;

select first_name , locate("E" , first_name)
from actor;

select concat_ws(' ' , first_name , last_name , 'hey')
from actor;


select trim(both "x"  from  " xxhelloxxx " ) from dual;

select  first_name ,lpad(first_name , 8 , "*")
from actor;

select first_name , rpad(first_name , 7 , "*")
from actor;

select first_name , last_name, concat("MR" , " " , first_name)
from actor;


