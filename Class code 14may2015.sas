

data test;
set sashelp.class;
retain cum_tot 5000;
cum_tot = sum(cum_tot,age);
run;
proc print ; run;



data test;
set sashelp.class;
cum_tot+age;
run;
proc print ; run;


data test;
set sashelp.class;
put _ALL_;
if age = 13;
run;
proc print ; run;


data test;
set sashelp.class;
put name= age= height;
if age = 13;
put _ALL_;
run;
proc print ; run;


data test;
set sashelp.class;
if age < 14 then group = 'A';
if age >= 14 then group = 'B';
run;
proc print ; run;


data test;
set sashelp.class;
if age lt 14 then group = 'A';
else group = 'B';

run;
proc print ; run;


data test;
set sashelp.class;
if age lt 14 then group = 'A  ';
else group = 'BBB';
run;
proc print ; run;


data test;
set sashelp.class;
length group $3;
if age lt 14 then group = 'A';
else group = 'BBB';
run;
proc print ; run;


data test;
set sashelp.class;
length group $3;
if age lt 14 then do;
			group = 'A' ;class= 1;
				end;
else do;
		group = 'BBB' ; class = 2;
		end;
run;
proc print ; run;


data test;
x= 1;
if x= 1 then y = 10;
if x= 2 then y= 20;
if x= 3 then y= 30; 
if x= 4 then y= 40;
else y = 100;
run;
proc print ; run;



data test;
x= 1;
if x= 1 then y = 10;
else if x= 2 then y= 20;
else if x= 3 then y= 30; 
else if x= 4 then y= 40;
else y = 100;
run;
proc print ; run;

/* **********Question for Tomorrow's class***********/

data t1;
input x;
datalines;
1
2
.
3
4
5
;run;

data test;
set t1;
if x= 1 then y = 10;
else if x= 2 then y= 20;
else if x= 3 or 4 then y= 30; 
else if x= 5 then y= 40;
else y = 1000;
run;
proc print ; run;
/*****************************************************/

data test;
set sashelp.class (obs= 10);
run;
proc print ; run;


data test;
set sashelp.class (firstobs= 5 obs= 10);
run;
proc print ; run;



data test;
set sashelp.class end= k ;
put k=;
if k=1;
run;
proc print ; run;

data test;
set sashelp.class nobs= A ;
put A= ;
if _N_ ge a-9;
run;
proc print ; run;

data test;
set sashelp.class  ;
keep name age;
put _ALL_;
run;
proc print ; run;


data test(keep = name age);
set sashelp.class ;
put _ALL_;
run;
proc print ; run;


data test;
set sashelp.class(keep = name age);
put _ALL_;
run;
proc print ; run;


data test;
set sashelp.class  ;
drop name age;
put _ALL_;
run;
proc print ; run;


data test(drop = name age);
set sashelp.class ;
put _ALL_;
run;
proc print ; run;


data test;
set sashelp.class(drop = name age);
put _ALL_;
run;
proc print ; run;


data test;
set sashelp.class  ;
rename name = first_name
		age = tot_age;
put _ALL_;
run;
proc print ; run;


data test(rename  = (name= first_name  age= tot_age));
set sashelp.class ;
put _ALL_;
run;
proc print ; run;


data test;
set sashelp.class(rename  = (name= first_name  age= tot_age));
put _ALL_;
run;
proc print ; run;

data test;
x = 1;
y= 'A';
z= '31dec1959'd;
z1= '00:01:01't;
z2= '31jan1960:00:00:10'dt;
run;
proc print ; run;



data test;
num = 5;
set sashelp.class point = num;
output;
stop;
run;

proc print ; run;

data test ;
x= 1;
output;
y = 1;
output;
run;
proc print ; run;


data test ;
x= 'Delhi';
output;
x = 'Jaipur';
output;
x='bangalore';
run;
proc print ; run;











