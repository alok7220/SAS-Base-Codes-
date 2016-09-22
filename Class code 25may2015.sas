data test;
do i = 1 to 10;
x+1;
end;
run;

proc print ; run;

data test;
do i = 1 to 3;
x+1; output;
end;
run;

proc print ; run;

data test;
do i = 1 to 3;
	do j= 1 to 2;
		x+1; 
	end;
end;
run;

proc print ; run;

data test;
do i = 1 to 3;
	do j= 1 to 2;
		x+1; 
	end;
	output;
end;
run;

proc print ; run;


data test;
do i = 1 to 3;
	do j= 1 to 2;
		x+1; 
			output;
	end;
	output;
end;
run;

proc print ; run;


data test;
	do until (x gt 30);
		x+10;
	end;
run;
proc print ; run;


data test;
x= 50;
	do until (x gt 30);
		x+10;
	end;
run;
proc print ; run;



data test;
x= 50;
	do while  (x lt 100);
		x+10;
	end;
run;
proc print ; run;




data test;
x= 505;
	do while  (x lt 100);
		x+10;
	end;
run;
proc print ; run;

data test;
x= 50;
	do until (x lt 30);
		x+10;
	end;
run;
proc print ; run;



data test;
x= 50;
	do while (x lt 30);
		x+10;
	end;
run;
proc print ; run;













