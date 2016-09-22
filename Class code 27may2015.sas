data test;
length JC $5;
JC= 'FA';
JL= '1';
JC= compress(JC||JL);
run;
proc print ; run;

data test;
input num;
datalines;
1
2
3
4
5
;
run;

data t2;
set test;
if . or 0 or 2 or 32000 then x= 1;
else x= 2;
run;
proc print ; run;

data test;
input num $;
datalines;
1
2
3
4
5
;
run;

data t1;
set test;
where num lt 3;
run;
proc print ; run;


data t1;
set test;
where num lt '3';
run;
proc print ; run;



data t1;
set sashelp.class;
/*contains*/
where name ? 'A';
run;
proc print ; run;



data t1;
set sashelp.class;
/*contains*/
where age ? 2;
run;
proc print ; run;


data t1;
set sashelp.class;
where name like '%A%';
run;
proc print ; run;
