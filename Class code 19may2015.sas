
/*Numeric Fuctions*/


data test;
x= 10.123456;
y= int(x);
z= round(x);
run;
proc print;
run;

data test;
x= 54.123456;
z= round(x,.001);
z1= round(x,12);
run;
proc print;
run;


data test;
x1=1; x2=1;y= 20;x3=1; x4=1;x5=.;

tot= sum(of x1-x5 );
tot1 = sum(of x1--x5);
tot2 = sum(of x:);
run;
proc print;
run;

/*tot1= sum(of y:, of x:);*/

data test;
jan=1;yoyo=1; feb=1;mar=1;yyyy=1; t=.;apr=1;
put _ALL_;
/*tot= sum(of jan--apr);*/
/*tot1= sum(of y:);*/
/*mean= mean(of jan--apr);*/
/*st = std ( of jan -- apr);*/
/*N= n(of jan--apr);*/
/*n_miss= nmiss(of jan--apr);*/
/*min= min (jan);*/
min= min (of jan -- apr);
run;
proc print;
run;



data test;
x1= 1;y1= 10; x2= 1;y303 = .;x4 = 4;  x3 = 1;
min= min(of x1--x3);
max= max(of x1--x3);
std = std(of x1-x3);
var =var (of x1--x3);
mean = mean (of x1-x4);
run;
proc print;
run;


data test;
x1= 1; x2= 1;x4 = .;  x3 = .; x5= 1;
mean= mean(of x1--x3);

run;
proc print;
run;


data test;
x1= 10; x2= 100;
x3= sum(x2, -x1);
run;
proc print;
run;


data test;
x= 10;
y = '100';
z= x*y;
z1= sum(x,y);
run;
proc print;
run;


data test;
x= 1;
y= '2e1';
z = 3;
tot = sum(x,y,z);
run;
proc print;
run;

data test;
x= 1;
y= '$2';
z = 3;
tot = sum(x,y,z);
tot1= x+y+z;
run;
proc print;
run;



data test;
x= '$2000';
y = 2;
z= x*y;
run;
proc print;
run;

data test;
x= '10';
y = 10;
z = x+y;
run;
proc print ; run;

data test;
x= '$10';
y = 10;
z = x+y;
run;

data t1;
x= '$10';
y = 10;
/*z1 =sum( x+y, '$1',10);*/
z =sum( x+y+ '$1'+10)+200;
run;
proc print;
run;



data t1;
x= '$10';
y = 10;
z = input (x, dollar3.);
run;
proc print;
run;


data t1;
x= '$10';
/*x1= input(x,dollar3.);*/
y = 10;
z =sum( input(x,dollar3.)+y, '$1',10);
run;
proc print;
run;

/*date functions*/

data test;
x= today();
y= date();
z1= time();
z11= datetime();
format x y date9.;
run;
proc print;
run;

Data test;
set sashelp.air(firstobs= 10 obs = 20 );
format date weekdate20.;
day= day(date);
mon = month(date);
yr= year(date);
wkdy = weekday(date);
qt = qtr(date);
run;
proc print;
run;

Data t2;
set test(keep = day mon yr);
comp_date = mdy(mon,day,yr);
format comp_date date9.;
run;
proc print ; run;

Data t2;
d= 12;
m= '1';
y= 1960;
date = mdy(d,m,y);
format date date9.;
run;
proc print ; run;


Data t2;
d= 12;
m= '$1';
y= 1960;
date = mdy(d,m,y);
format date date9.;
run;
proc print ; run;


options yearcutoff= 2059;
data test;
/*dt = '31jan1960'd;*/
dt1 = '31jan58'd;
/*tm = '00:00:01't;*/
dtt = '31dec1959:23:59:59'dt;
dtt1= datepart(dtt);
format dt1 dtt1 date9.; 
run;
proc print;
run;

data t1;
x= intnx('month','11jan1960'd,-1,'B');
x1= intnx('day','11jan1960'd,-30);
x2= intnx('year','11jan1960'd,2);
y= intnx('year','1jan1960'd,-1);
format x x1 x2 y date9.;
run;
proc print;
run;



data t1;
x= intnx('year',10,-1,'m');
format x date9.;
run;
proc print;
run;



data test3;
x= intck('month', '01jan1960'd, '01feb1960'd);
y= intck('year', '31dec1959'd, '01jan1960'd);
run;
proc print;
run;
























data test;
x= 1;

data t2 t3 t4 ;
x= 2;
run;


data ;
x= 3;
run;

daat t3;
x= 5;
run;
