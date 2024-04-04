create database april;
use april;

create table salary(id int, amount int);

insert into salary values(1,10),(2,30),(3,40),(4,9),(5,200),(6,600),(7,66);

select amount from salary where id=3;
select * from salary where amount>40;
select * from salary where amount>(select amount from salary where id=3);

select avg(amount) from salary;

select id, amount, 136.4286 from salary;

select id, amount, (select avg(amount) from salary) from salary;

-- id amount --amount=2=3 match --
-- multi row subquery => , = , < , > directly use nahi kr sakte
-- in , any , all --
select amount from salary where id=2 or id=3;

-- single row subquery => , = , >, < directly use kr sakte--

select * from salary where
amount in (select amount from salary where id=2 or id=3);

-- andar k output pr match in => =any--
select * from salary where
amount =any (select amount from salary where id=2 or id=3);
-- =any same value match--

select * from salary where
amount >any (select amount from salary where id=2 or id=3);


-- >=any used minimum value of result set
-- <=any used maximum value of result set
-- >all used  more than the maximum value of result set

-- group by joint subquery windows views--(interview)

-- scalar function is called single row function--
-- aggregate function is called multi row function--

select max(amount) from salary 
where amount>(select amount from salary where id=2);

select * from salary order by amount desc limit 1,1;
select * from salary order by amount desc limit 1,3;

select max(amount) from salary
where amount<(select max(amount) from salary
where amount>(select amount from salary where id=2));



