
data test;
infile datalines dsd;
input name $ age $ sal $;
datalines;
aa 12 12000
bb 32 32000
cc 56 65432
;
run;
proc print ; run;

data test1;
infile datalines dsd;
input name $ age $ sal $;
datalines;
aa,12,12000
bb,32,32000
cc,56,65432
;
run;
proc print ; run;



data test2;
infile datalines dsd;
input name $ age $ sal $;
datalines;
aa,12,12000
bb,,32000
cc,56,65432
;
run;
proc print ; run;

data test2;
infile datalines dsd dlm = ' ';
input name $ age $ sal $;
datalines;
aa 12 12000
bb  32000
cc 56 65432
;
run;
proc print ; run;


data test2;
infile datalines dlm = '|';
input name $ age $ sal $;
datalines;
aa|12|12000
bb||32000
cc|56|65432
dd|56|75848
;
run;
proc print ; run;



data test3;
infile datalines dsd dlm = ' |,';
input name $ age $ sal $;
datalines;
aa 12,12000
bb|,32000
cc|56|65432
dd 56 75848
;
run;
proc print ; run;

data test;
infile datalines dlm= '|';
input name $ age  sal ;
datalines;
Mr. aa|12|12000
Mrs bb|32|32000
Ms cc|56|65432
;
run;
proc print ; run;


data test4;
infile datalines ;
input name $ 1-11 age 14-15  sal 17-21 Grade $23  ;
datalines;
Mr. Ajay     12 12000 A 
Mrs Rose     32 32000 B
Ms Maria Jr  56 65432 C
;
run;
proc print ; run;


data test5;
infile datalines ;
input name $ 1-11 age 14-15  sal 16-20 Grade $21  ;
datalines;
Mr. Ajay     1212000A 
Mrs Rose     3232000B
Ms Maria Jr  5665432C
;
run;
proc print ; run;


data test4;
infile datalines ;
length name $14;
input name & $ age  sal Grade $  ;
datalines;
Mr. Ajay       12 12000 A 
Mrs Rose        32 32000 B
Ms Maria Jr       56 65432 C
;
run;
proc print ; run;
/*formats and informats*/
data test;
input sal;
datalines;
+20
;
run;
proc print ; run;

data test2;
input sal;
datalines;
-20
;
run;
proc print ; run;

data test3;
input sal;
datalines;
$20
;
run;
proc print ; run;


data test4;
input sal;
datalines;
2e3
;
run;
proc print ; run;


data test3;
input sal;
informat sal dollar.;
format sal dollar.;
datalines;
$20
;
run;
proc print ; run;



data test3;
input sal;
informat sal dollar.;
format sal dollar.;
datalines;
$2,000,000
;
run;
proc print ; run;



data test3;
input sal;
informat sal dollar.;
format sal dollar15.;
datalines;
$2,000,000
;
run;
proc print ; run;



data test3;
input sal;
informat sal dollar.;
format sal dollar10.1;
datalines;
$2,000.135
;
run;
proc print ; run;


data test3;
input sal;
informat sal comma.;
format sal comma10.;
datalines;
2,000
;
run;
proc print ; run;


data test3;
input dob ;
informat dob date9.;
/*format dob dollar10.1;*/
datalines;
31jan1960
;
run;
proc print ; run;


data test3;
input dob ;
informat dob date9.;
/*format dob dollar10.1;*/
datalines;
27dec1959
;
run;
proc print ; run;


data test3;
input dob ;
informat dob date9.;
format dob date9.;
datalines;
01mar1960
;
run;
proc print ; run;



data test3;
input dob ;
informat dob date9.;
format dob mmddyy10.;
datalines;
01mar1960
;
run;
proc print ; run;



data test3;
input dob ;
informat dob time8.;
format dob time5.;
datalines;
00:11:01
;
run;
proc print ; run;

data test3;
input dob ;
informat dob datetime20.;
/*format dob time5.;*/
datalines;
01jan1960:00:11:01
;
run;
proc print ; run;


data test3;
input dob ;
informat dob datetime20.;
format dob datetime20.;
datalines;
01jan2015:00:11:01
;
run;
proc print ; run;


data test3;
input dob ;
informat dob datetime20.;
/*format dob time5.;*/
datalines;
01jan2015:00:11:01
;
run;
proc print ; run;


data test3;
input dob ;
format dob datetime20.;
datalines;
-1
;
run;
proc print ; run;



data test3;
input dob ;
informat dob time8.;
format dob date9.;
datalines;
00:00:10
;
run;
proc print ; run;

data test3;
input dob ;
informat dob date7.;
format dob date9.;
datalines;
31jan60
;
run;
proc print ; run;

options yearcutoff = 2058;
data test3;
input dob ;
informat dob date7.;
format dob date9.;
datalines;
31jan60
;
run;
proc print ; run;










