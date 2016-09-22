/*Assignment*/
data test;
input name $ age sal;
datalines;
aa 12 12000
.  12 20000
.  14 25000
bb 15 78000
.  78 56000
.  45 45000
;
run;



/*one to one*/
Data D1;
input num $3. var1 $;
datalines;
1 x1
2 x2
3 x3
4 x4
;run;
proc print;
run;
Data D2;
input num $3. var2 $;
datalines;
11 y1
222 y2
33 y3
44 y4
5 y5
;run;
proc print;
run;
data test;
set d1;
set d2;
run;
proc print;
run;


Data D1;
input num $1. var1 $;
datalines;
1 x1
2 x2
3 x3
4 x4
;run;
Data D2;
input num $3. var2 $;
datalines;
11 y1
222 y2
33 y3
;run;
data test;
set d2;
set d1;
run;
proc print;
run;



data first;
x= 'Bangalore';
put _ALL_;
output;
y = 'New york';
put _ALL_;
output;
x= 'Mumbai';
y = 'St. Louise';
put _ALL_;
run;
proc print;
run;
data last;
x= 'Delhi';
y = 'Jaipur';
output;
run;
data d3;
set last;
set first;
run;
proc print;
run;

/*concatenation*/

Data D1;
input num $1.  var1 $;
datalines;
1 x1
2 x2
3 x3
4 x4
;run;
Data D2;
input num $3. var2 $;
datalines;
11 y1
222 y2
33 y3
2A y4
;run;
data test2;
set d2 d1;
run;
proc print;
run;

Data D1;
input num var1 $;
datalines;
1 x1
2 x2
3 x3
4 x4
;run;
Data D2;
input num  var1 $;
datalines;
11 y1
222 y2
33 y3
44 y4
;run;

/*appending*/
proc append base = d1 data = d2;
run;

Data D1;
input num var1 $;
datalines;
1 x1
2 x2
3 x3
4 x4
;run;
Data D2;
input num  var2 $;
datalines;
11 y1
222 y2
33 y3
44 y4
;run;

proc append base = d1 data = d2 force;
run;





Data D1;
input num $1. var1 $;
datalines;
1 x1
2 x2
3 x3
4 x4
;run;
Data D2;
input num  $3. var1 $;
datalines;
11 y1
222 y2
33 y3
44 y4
;run;
proc append base = d1 data = d2 force;
run;


Data D1;
input x y z;
datalines;
11 22 33
;run;
Data D2;
input x y ;
datalines;
1 20
;run;

proc append base = d2 data = d1  force;
run;


proc append base = d1 data = d2 force ;
run;




Data D1;
input num  var1 $;
datalines;
1 x1
2 x2
3 x3
44 x4
;run;
Data D2;
input num  var2 $;
datalines;
11 y1
22 y4
33 y3
222 y2
;run;
proc sort data= d2; by num; run;

data test2;
set d2 d1;
by num;
run;
proc print;
run;

