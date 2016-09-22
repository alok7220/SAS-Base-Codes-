libname abc 'C:\Users\anamika.preity\Desktop\data';

data abc.test;
x= 1;
run;

proc print data = test;
run;


data test;
infile 'C:\Users\anamika.preity\Desktop\data\mydoc.txt';
input name age sal;
run;


data test1;
infile 'C:\Users\anamika.preity\Desktop\data\mydoc.txt';
input name $ age sal;
run;



data test1;
input name $ age sal;
datalines;
aa 12 23000
bb 56 6000
cc 65 58252
;
run;

proc print data = test1; run;


data test1;
input name $ age sal;
datalines;
aa      12       23000
bb           56           6000
cc          65             58252
;
run;

proc print ; run;


data test1;
input name $ age sal;
datalines;
aa 12 23000 A Delhi
bb 56 6000 B Mumbai
cc 65 58252 C Jaipur
;
run;

proc print ; run;



data test1;
input name $ age $ sal $;
datalines;
aa 12 23000 
bb 56 
cc 65 58252 
dd 44 45000
;
run;

proc print ; run;




data test1;
infile datalines missover;
input name $ age $ sal $;
datalines;
aa 12 23000 
bb 56 
cc 65 58252 
dd 44 45000
;
run;

proc print ; run;



data test1;
infile datalines missover;
input name $ age $ sal $;
datalines;
aa 12 23000 
bb 
cc 65 58252 
dd 44 45000
;
run;

proc print ; run;




data test1;
infile datalines missover;
input name $ age $ sal $;
datalines;
aa 12 23000 
bb    45000
cc 65 58252 
dd 44 45000
;
run;

proc print ; run;


