use sakila;

select * from address;

-- how to handle null values--
desc address;
select count(address_id) from address;

select count(address2) from address;

select address_id , address2 from address;
-- handle null function we used ifnull--

select address_id , address, ifnull(address2,10) from address;
-- handle null values--
select count(ifnull(address2 , "ab")) from address;

select * from payment;

select  customer_id , staff_id;
select nullif(customer_id , staff_id) from payment;

-- if null return the value if both values are equal and if not then it return first values--
-- if -- condition used in this majority times we used one condition
-- if(condition , true, false)--
select * from payment;
select amount, if(amount>1, "Discount", "No Discount")
from payment;

-- nested if (condition , true , if(condition,true , false)
select amount, if(amount>2 ,"50%  Discount", if(amount<1 , "30% Discount" , "No Discount")) from payment;

-- case statement 
-- if(col>2)
-- case expression
   -- when 2.99    then "50% off"
    -- when 1.90  then "30% off"
  -- end 
  
  -- or--
  -- if(col>2)
-- case expression
   -- when 2.99    then "50% off"
    -- when 1.90  then "30% off"
    -- else "NO DISCOUNT"
  -- end 
 -- from payment;
select amount,
case amount
   when 2.99 then "50%OFF"
   when 1.99 then "30%OFF"
   end
   from payment;
   
select amount,
case amount
   when 2.99 then "50%OFF"
   when 1.99 then "30%OFF"
   end "Coupon"
   from payment;
   
 select amount,
case amount
   when  amount>2 then "50%OFF"
   when 1.99 then "30%OFF"
   else "No Discount"
   end "Coupon"
   from payment;  
   
   -- select * from payment;
   # 100 1 to 100 ==> 10% off(total amount)
   # 151-250 ==> 25%off (amount)
   # 1% discount( amount show karoge)
   
use sakila;

select payment_id ,amount,
case 
	when payment_id between 1 and 100 then amount-(amount*10/100)
	when payment_id between 151 and 250 then amount-(amount*25/100)
	else amount-(amount*1/100)
    end "Total Discount"
	from payment;


select payment_id ,customer_id ,amount,
case 
	when customer_id>10 then amount+(amount*10/100)
	when customer_id>20 then amount+(amount*50/100)
    when customer_id>50 then amount+(amount*80/100)
	else "NO Increment"
    end "Total Amount"
	from payment;

	 
   
   
   
   
