/*
Author:ALLEN K PHILIP
Description:Creation of packages.
*/

create or replace package pka2 as 
procedure proc1(n1 int,n2 int); 
procedure proc2(n3 int); 
function fn11(n4 int) return int; 
function fn22(n5 int,n6 int,n7 int) return int; 
end pka2; 
create or replace package body  pka2 as 
procedure proc1(n1 int ,n2 int) 
is 
begin 
dbms_output.put_line('sum ='||(n1+n2)); 
dbms_output.put_line('average ='||((n1+n2)/2)); 
dbms_output.put_line('product ='||(n1*n2)); 
end proc1; 
procedure proc2(n3 int) 
is 
begin 
dbms_output.put_line('squareroot ='||(sqrt(n3))); 
end proc2; 
function fn11 (n4 int) 
return int 
is 
r int; 
begin 
r:=MOD(n4,2); 
return r; 
end; 
function fn22 (n5 int,n6 int,n7 int) 
return int 
is 
s int; 
begin 
s:=n5+n6+n7; 
return s; 
end; 
end pka2; 
declare 
a int; 
b int; 
c int; 
d int; 
e int; 
f int; 
g int; 
x1 int; 
x2 int; 
begin 
a:=&a; 
b:=&b; 
pka2.proc1(a,b); 
c:=&c; 
pka2.proc2(c); 
d:=&d; 
x1:=pka2.fn11(d); 
if x1=0 then 
dbms_output.put_line('number : '||d||' is even'); 
else 
dbms_output.put_line('number is odd'); 
end if; 
e:=&e; 
f:=&f; 
g:=&g; 
x2:=pka2.fn22(e,f,g); 
dbms_output.put_line('sum of no:s : '||e||','||f||','||g||' is : '||x2); 
end; 
