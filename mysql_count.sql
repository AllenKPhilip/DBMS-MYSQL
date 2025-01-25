/*
Author:ALLEN K PHILIP
Descreption:Create a trigger w.r.t customer_details table. Increment the value of count_row
*/
create trigger tr5
before insert or delete on customer_details
for each row
begin
 if deleting then
  update cust_count
  set count_row-count_row-1;
 else
  update cust count
  set count_row=count_row+1;
 end if;
end;
