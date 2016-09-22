
/*Character Functions*/

Data test;
input nameage $10.;
datalines;
24Ram
26Albert
98Bob
;
run;
proc print;
run;
data test1;
set test;
age= substr(nameage,1,2);
name = substr(nameage,3);
drop nameage;
run;
proc print;
run;



Data test;
input nameage $10.;
datalines;
Ram24
Albert26
Bob85
;
run;

data test1;
set test;
age= reverse(substr(left(reverse(nameage)),1,2));
name = left(reverse(substr(left(reverse(nameage)),3)));
proc print;
run;

data test;
name= '   A      B   cccc      C    ';
n1= compress(name);
run;
proc print ; run;



data test;
name= '   A-----B *%  cccc  ||||^^^^    C \\\   ';
n1= compress(name,'-*%|^\ ');
run;
proc print ; run;


Data test;
input nameage $10.;
datalines;
Ram2400
Albert126
Bob85
;
run;


data test1;
set test;
/*propcase*/
/*num= compress(lowcase(nameage),,K);*/

num= compress(lowcase(nameage),'abcdefghijklmnopqrstuvwxyz');
name=lowcase(nameage);
run;
proc print;
run;


data test1;
str= 'Alfa#@^Beta';
name = compress(str,'#@^');
run;
proc print;
run;


data test1;
str= 'Mr.            John                  Stimpson       Jr.     ';
name = compbl(str);
run;
proc print;
run;

data test2;
input phnum $20.;
datalines;
+91 0124 4009752
+91 011 56565698
+91 022 12345678
;
run;

data test3;
set test2;
substr(phnum, 1,3)= '+95';
run;
proc print;
run;

data test2;
input phnum $20.;
datalines;
+91 0124 4009752
011 +91 56565698
022 12345678 +91
+75 011 12345678
;
run;
proc print;
run;

data test3;
set test2;
x= index(phnum, '+91') ;
if  index(phnum, '+91') > 0 then 
	substr(phnum,index(phnum, '+91'),3 )= '+95';
run;
proc print;
run;


data test2;
input phnum $25.;
datalines;
+91 0124 +91 4009752 +92
011 +91 56565698 +92
022 12345678 +91 +92
+75 011 12345678 +92
+91 011 12345678 +92 +91
;
run;

data test3;
set test2;
new_phnum= tranwrd(phnum,'+91','0091');
run;
proc print;
run;


data test4;
set test2;
new_phnum= tranwrd(tranwrd(phnum,'+91','0091'),'+92', '0092');
run;
proc print;
run;


data test2;
input phnum $40.;
datalines;
(+91)     0124       4009752
    (+91)    011       56565698
(+91)   022  12345678
;
run;
proc print;
run;

data test3;
set test2;
ISD= scan(phnum,1);
STD= scan(phnum,2);
PH= scan(phnum,3);
run;
proc print;
run;


data test3;
set test2;
ISD= scan(phnum,1,')');
STD= scan(phnum,1,' ');
PH= scan(phnum,2,' ');
run;
proc print;
run;


data test2;
input phnum $40.;
datalines;
(+91)     0124     :-*  4009752
    (+91)    011      & 56565698
(+91)  #% 022  12345678
;
run;

data test3;
set test2;
ISD= scan(phnum,1,' ()-:%#&*');
STD= scan(phnum,2,' -:%#&*');
PH= scan(phnum,3,' -:%#&*');
run;
proc print ; run;

data test2;
input phnum $25.;
datalines;
(+91)     0124    04009752
    (+91)     011 56565698
(+91)     022    12345678
;
run;

data test3;
set test2;
ISD= scan(phnum,1,'+');
STD= scan(phnum,2,'+');
PH= scan(phnum,3,' ');
put _ALL_;
run;
proc print;
run;

data test3;
x= 'I love India';
w1= scan(x,-1);
w2= scan(x,2);
w3= scan(x,3);
run;
proc print;
run;

data test;
str= 'UsA Australiau s RusSIA ';
x= index(str, 'us');
y = find(str, 'us',9);
run;
proc print;
run;


data test;
str= 'USA Australia RUSSIA ';
str2= 'u s A Australia RUSSIA ';
x= find(str, 'us');
y = find(str, 'us', 'i');
z = find(str, 'us', 't');
run;
proc print;
run;


data test;
str= 'USA Australia RUSSIA ';
y = find(str, 'us',6,'i');
run;
proc print;
run;

data test;
str= 'USA Australia RUSSIA ';
var= '    USA    ';
y = find(str, (var), 't' );
y1 = find(str, compress(var));

run;
proc print;
run;


data test;
str= 'USA Australia RUSSIA ';
var= 'US ';
y = find(str, var, 't');
run;
proc print;
run;



data test;
Pre=  'Mr.   ';
Fname= 'John  ';
Lname= '    Stimpson    ';
fullname= pre||fname||lname;
fullname2= compbl(pre||fname||lname);
run;
proc print;
run;


data test;
Pre=  'Mr.   ';
Fname= 'John  ';
Lname= '    Stimpson    ';
full name= trim(pre)||' '||trim(fname)||' '||trim(left(lname));
run;
proc print;
run;


data test;
length fullname $30;
Pre=  'Mr.   ';
Fname= 'John  ';
Lname= '    Stimpson    ';
fullname= cat(pre,fname,lname);
run;
proc print;
run;


data test;
Pre=  'Mr.   ';
Fname= 'John  ';
Lname= '    Stimpson    ';
fullname= cats(pre,fname,lname);
run;
proc print;
run;

data test;
Pre=  'Mr.   ';
Fname= 'John  ';
Lname= '    Stimpson    ';
fullname= catx('-',pre,fname,lname);
fullname1= catx(pre,fname,lname);
run;
proc print;
run;



data test1;
x= 'Books';
y= 2013;
name= x||y;
run;
proc print;
run;


data test1;
x= 'Books';
y= 20136668;
name= x||put(y,4.) ;
run;
proc print;
run;




data test;
input dept $ prod $;
datalines;
D1 a
D1 b
D1 c
D1 d
D2 x
D2 y
D3 x11
D3 x12
D3 x13
D3 x14
;
run;
/*DESIRED OUTPUT*/
/*dept products*/
/*d1 A,B,C,D*/
/*D2 X,Y*/
/*D3 X11,X12,X13,X14*/



DATA TEST;
X= 1234567890;
Y= '('||SUBSTR(X,1,3)||')';
RUN;

proc print;
run;











