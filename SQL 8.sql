-- DATA TYPE OF SQL --
-- numeric string data, date time

-- INT[(WIDTH)] [unsigned] [zerofill]
-- 4byte,
-- 2^32
-- 2, 147,483 to 2, 147, 483,647 (4 byte storage)

-- the width parameter specifies th edisplay width,
-- 8 byte
-- unsigned


create table test(id int);
insert into test values(-13355);
select * from test;

create table test2(id int unsigned);
insert into test2 values(13355);
select * from test2;
describe test2;

use test;
drop table test_bigint;
CREATE TABLE test_bigint(id BIGINT UNSIGNED);

-- tinint, smallint, mediumint
-- 1 byte==> 8 2(8)
-- 2*8 ==> 256 (unsiged) ==> -128 to 127

create table abc(id tinyint);
insert into abc values(127);
select * from abc;

create table abc(id tinyint);
insert into abc values(False);
select * from abc;

-- acid property in RDMS
-- How acid property are implemented in RDMS
-- Constraints

-- varchar and char
-- varchar 
-- maximum varchar

create table ep2(name1 char(3));
insert into ep2 values("C  ");
select name1, length(name1) from ep2;

create table ep2(name1 char(3));
insert into ep2 values("  XU");
select name1, length(name1) from ep2;

create table test123 (dob datetime);
insert into test123 values ("2022-05-13 16:04:25");
select * from test123;

