
data test;
set sashelp.class;
label name = 'First name of the student'
		age = 'Total Age';
run;

proc print ; run;



data test;
set sashelp.class;
/*if age ge 13 and age le 15;*/
if   13 <= age <= 15;
run;
proc print ; run;

proc sort data = sashelp.prdsal2 out = prdsal2 ;
by country;
run;

data test;
set prdsal2;
by country;
if first.country = 1;
run;
proc print ; run;



proc sort data = sashelp.prdsal2  out = prdsal2;
by country descending ACTUAL;
run;


proc sort data = sashelp.prdsal2  out = prdsal2 nodupkey;
by country ;
run;


proc sort data = sashelp.prdsal2  out = prdsal2 nodupkey;
by state ;
run;


data test;
input name $ age sal;
datalines;
aa 12 12000
aa 12 12000
aa 12 12000
bb 32 32000
bb 23 32000
cc 44 45000
cc 44 45000
;
run;

proc sort data = test nodup;
by name ;
run;

proc sort data = sashelp.prdsal2  out = prdsal2;
by country descending actual;
run;

data test;
set prdsal2;
by country;
if first.country;
run;
proc print ; run;


proc sort data = sashelp.prdsal2  out = prdsal2;
by country actual;
run;
data test;
set prdsal2;
by country;
if first.country then x= 0;
x+1;
if x le 10;
run;


proc sort data = sashelp.prdsal2  out = prdsal2;
by country;
run;

data test;
set prdsal2;
by country;
if first.country then tot_actual= 0;
tot_actual+actual;
keep country actual tot_actual;
if last.country;
run;



data test;
set sashelp.prdsal2;
keep country year actual ;
run;


