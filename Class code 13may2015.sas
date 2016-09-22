
/*formatted input style*/

data test6;
infile datalines ;
input @1 name $12. @13 age 2. @17 sal 5. ;
datalines;
Mr. ramesh  12  23000
Mr. Alfa    12  85000
Mrs Jully   65  58252
Mariann Jr. 67  85858
;
run;
  
proc print; run;



data test;
input name $ 1-10  @13 dob  date9.  ;
datalines;
Mr. ramesh  31jan1960
Mr Albert   01jan1961
Mr john Jr. 01mar2015
;
run;

proc print ; run;


data test;
input name $ 1-10   dob  date9.  ;
datalines;
Mr. ramesh                   31jan1960
Mr Albert 01jan1961
Mr john Jr.                  01mar2015
;
run;

proc print ; run;



data test;
input @1 name & $50. add & $50. +4 dob date9.;
datalines;
Mr. ramesh  18 siris road      31jan1960
Mr Albert  25 jasmin rd      01jan1961
Mr john stimpson jr.  10janpath, 2nd cross      01mar2015
;
run;

proc print ; run;



data test1;
format dob date9.;
input @1 dob date7.;
datalines;
01mar1960
;
run;
proc print; run;

data test;
input name $ age @@;
datalines;
aa 12 bb 34 cc 56 bb 56
bb 43
jj 78 vv 67
mm 89 bb 90 ww 33
;
run;
proc print ; run;




data test;
input name & $10. / age sal add & $20.;
datalines;
Mr John  F
23
52000
13 nashville rd
Mrs Jully  M
25
52000.02
13 manhattenville rd.
;
run;
proc print ; run;



data test;
input name & $10. //  sal add & $20.;
datalines;
Mr John  F
23
52000
13 nashville rd
Mrs Jully  M
25
52000.02
13 manhattenville rd.
;
run;
proc print ; run;


data test;
infile datalines missover;
input #1 name & $10. 
	  #4 add & $20.
		#1 gender $ 12
		#2 age ;
datalines;
Mr John    F
23
52000
13 nashville rd
Mrs Jully  M
25
52000.02
13 manhattenville rd.
;
run;
proc print ; run;




data test;
input  Dept $ @;
if dept = 'd1' then input name $ age sal grade $;
else delete;
datalines;
d1 aa 23 25000 A
d2 bb 52 85000 B
d3 cc 87 56000 C
d4 dd 78 52000 A
d1 aa 23 25000 A
d2 bb 52 85000 B
d3 cc 87 56000 C
d4 dd 78 52000 A
d1 aa 23 25000 A
d2 bb 52 85000 B
d3 cc 87 56000 C
d4 dd 78 52000 A
;
run;
proc print ; run;



/*PDV*/
proc contents data = sashelp.class;
run;

proc contents data = sashelp.class varnum;
run;


proc contents data = sashelp.class out = t2 varnum;
run;


data test;
set sashelp.class;
total = age+height+weight;
run;
proc print ; run;




data t1;
set sashelp.class;
if _N_= 4 then age= .;
run;
proc print ; run;


data test;
set t1;
total = age+height+weight;
run;
proc print ; run;



data test;
set t1;
total = sum(age, height, weight);
run;
proc print ; run;



Data test;
a= 10; b=20; c= .;
tot= sum(a+c+b);
run;
proc print ; run;


data test;
set sashelp.class;
cum_tot = cum_tot+age;
run;
proc print ; run;


data test;
set sashelp.class;
cum_tot = sum(cum_tot,age);
run;
proc print ; run;


data test;
set sashelp.class;
retain cum_tot;
cum_tot = sum(cum_tot,age);
run;
proc print ; run;



data test;
set sashelp.class;
retain cum_tot 5000;
cum_tot = sum(cum_tot,age);
run;
proc print ; run;


