data class;
set sashelp.class;
by name;
if Sex='M' then sum=2;
else sum=2; 
run;

proc  print data=class;
run;

data class2 end;
set class;
by sum; 
if first.sum then age_sum=0;
age_sum+age;
keep age_sum;
if last.sum;
run;
proc print;
run;



data test;
set sashelp.class end= abc;
tot_age+age;
if abc =1 ;
keep tot_AGE;
run;
proc print ; run;

proc sort data= sashelp.prdsal2 out = t1;
by country; run;

data test;
set t1;
by country;
if first.country then x= 0;
x+1;
keep country state actual x;
run;
/*proc print ; run;*/


proc sort data= sashelp.prdsal2 out = t1;
by country year; run;

data test;
set t1;
by country year;
if first.year then total_actual= 0;
total_actual+actual;
if last.year;
avg_actual = total_actual/x;
keep country state year actual total_actual;

run;

data test;
set t1;
by country year;
if first.year then do;
		total_actual= 0; x=0;
		end;
total_actual+actual; x+1;
if last.year;
avg_actual = total_actual/x;
keep country  year avg_actual;
format avg_actual dollar10.2;
run;


proc transpose data = test  
	out = test_transposed (drop = _NAME_);
by country;
id year;
var  avg_actual;
run;

proc means data = sashelp.class;
run;


data t1;
set sashelp.class;
if _N_= 6 then age= .;
run;

proc means data = t1;
run;



proc means data = sashelp.class maxdec= 2;
var age ;
run;


proc means data = sashelp.class maxdec= 2;
var age ;
class sex;
run;
 

proc means data = sashelp.prdsal2 maxdec= 2 mean;
var actual ;
class country year;
run;


proc means data = sashelp.class maxdec= 2 cv p25 p90 n css;
var age ;
class sex;
run;


proc means data = sashelp.class maxdec= 2 mean noprint nway;
var age height;
class sex;
output out = t2
mean = mean_age ht_mean
sum = sum_age ht_sum;
run;



proc means data = sashelp.prdsal2 maxdec= 2 noprint nway;
var actual;
class country year;
output out = t3
mean = mean_actual;
run;

proc summary data = sashelp.class print;
var age; 
run;


proc summary data = sashelp.prdsal2 maxdec= 2 noprint nway;
var actual;
class country year;
output out = t5
mean = mean_actual;
run;


proc freq data = sashelp.class;
run;


proc freq data = sashelp.class;
tables sex;
run;

proc freq data = sashelp.class;
tables sex age / nocum nopercent;
run;



proc freq data = sashelp.class;

tables sex*age / nopercent norow nocol ;
run;



proc freq data = sashelp.class;
tables age*sex / nopercent norow nocol ;
run;


proc freq data = sashelp.class;
tables sex*age /list out = t10;
run;

proc freq data = sashelp.class;
tables sex*age*height ;
run;

 
 proc format ;
 value myfmt
 	0-50 = '00-50'
	50-60 = '50-60'
	60-70 = '60-70'
	70 - high = 'Very High'
	;
	run;

	
proc freq data = sashelp.class;
tables sex*age*height ;
format height myfmt.;
run;


 proc format ;
 value myfmt
 	0 - 5= 'A   '
	5-10 = 'B   '
	11-50 = 'C   '
	;
	run;

data test;
input num;
num1= num;
format num1 myfmt.;
datalines;
1
2
5
10
10.5
51
.
;
run;



 proc format ;
 value myfmt
 	0 - 5= 'A   '
	5-10 = 'B   '
	11-50 = 'C   '
	other = 'Z';
	run;

data test;
input num;
num1= num;
format num1 myfmt.;
datalines;
1
2
5
10
10.5
51
.
;
run;

/*http://www2.sas.com/proceedings/sugi31/249-31.pdf*/



 


