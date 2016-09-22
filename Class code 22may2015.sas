

/*Merging*/
Data D1;
input num  var1 $;
datalines;
1 x1
2 x2
3 x3
4 x4
;run;
Data D2;
input num  var2 $;
datalines;
1 y1
2 y2
3 y3
4 y4
;run;

Data test;
merge d1 d2;
by num;
run;
proc print;run;

Data D1;
input num  var1 $;
datalines;
1 x1
3 x3
5 x5
7 x7
;run;
Data D2;
input num  var2 $;
datalines;
1 y1
2 y2
2 y2
2 y2
4 y4
9 y6
10 y10
;run;

Data test;
merge d1 d2;
by num;
run;
proc print;run;


Data D1;
input num  var1 $;
datalines;
1 x1
2 x2
;run;
Data D2;
input num  var2 $;
datalines;
1 y1
1 y2
2 y3
2 y4
;run;

Data test;
merge d1 d2;
by num;
run;
proc print;run;


Data D1;
input num  var1 $;
datalines;
1 x1
2 x2
4 x3
;run;
Data D2;
input num  var2 $;
datalines;
1 y1
1 y2
2 y3
2 y4
5 x4
;run;
Data test;
merge d1 d2;
by num;
run;
proc print;run;

Data D1;
input num  var1 $;
datalines;
1 x1
1 x2
1 x3
;run;
Data D2;
input num  var2 $;
datalines;
1 y1
1 y2
1 y3
1 y4
2 x4
;run;

Data test;
merge d1 d2;
by num;
run;
proc print;run;
Data D1;
input num  var1 $;
datalines;
1 x1
3 x3
5 x5
7 x7
;run;
Data D2;
input num  var2 $;
datalines;
1 y1
2 y2
2 y2
2 y2
4 y4
9 y6
10 y10
;run;

Data test;
merge d1(in= a) d2(in = b);
by num;
put a= b= ;
run;


Data test;
merge d1(in= a) d2(in = b);
by num;
if a and b;
put a= b= ;
run;
proc print ; run;


Data test;
merge d1(in= a) d2(in = b);
by num;
if a ;
run;
proc print ; run;


Data test;
merge d1(in= a) d2(in = b);
by num;
if b ;
run;
proc print ; run;


Data test;
merge d1(in= a) d2(in = b);
by num;
if (a and not b ) or (b and not a)  ;
run;
proc print ; run;








