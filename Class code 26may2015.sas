data test;
set sashelp.yr1001;
array x(*) s:;
do i = 1 to dim(x);
if x(I) = . then x(I) = 0;
end;
run;

data test1;
set sashelp.yr1001;
array x(*) s0001--s1000;
do i = 1 to dim(x);
if x(I) = . then x(I) = 0;
end;
run;



data test;
set sashelp.class;
array y(3) $;
run;
proc print ; run;


data test;
set sashelp.class;
array y(3) $ _Temporary_;
run;
proc print ; run;


ods html file ='C:\Users\anamika.preity\Desktop\data\myfile1.html';
proc print data = sashelp.class;
run;
proc freq data = sashelp.class;
tables sex*age;
run;
ods html close;

ods listing close;
ods html file ='C:\Users\anamika.preity\Desktop\data\myfile1.xls';
proc print data = sashelp.class;
run;
proc freq data = sashelp.class;
tables sex*age;
run;
ods html close;
ods listing;

/*ods tagsets excelxp file = */



ods listing close;
ods csv file ='C:\Users\anamika.preity\Desktop\data\myfile1.csv';
proc print data = sashelp.class;
run;
proc freq data = sashelp.class;
tables sex*age;
run;
ods csv close;
ods listing;





ods listing close;
ods csv file ='C:\Users\anamika.preity\Desktop\data\myfile1.csv';
proc print data = sashelp.class;
run;
ods csv close;
ods listing;


ods listing close;
ods csvall file ='C:\Users\anamika.preity\Desktop\data\myfile1.csv';
proc print data = sashelp.class;
run;
ods csvall close;
ods listing;



ods listing close;
ods pdf file ='C:\Users\anamika.preity\Desktop\data\myfile1.pdf';
proc print data = sashelp.class;
run;
ods pdf close;
ods listing;



ods listing close;
ods pdf file ='C:\Users\anamika.preity\Desktop\data\myfile2';
proc print data = sashelp.class;
run;
data test;
set sashelp.class;
run;

ods pdf close;
ods listing;














