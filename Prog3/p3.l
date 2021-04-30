%{
#include<stdio.h>
int posno= 0;
int negno = 0;
int posfrac = 0;
int negfrac = 0;
int errors = 0;
%}
d [0-9]
%%
(\+?|-){d}*\.-{d}+ errors++; // invalid numbers
(\+?|-){d}*\.\+{d}+ errors++; // invalid numbers
\+?{d}+\/[1-9]{d}* posfrac++;
-{d}+\/[1-9]{d}* negfrac++;
(\+?|-){d}+\/{d}+ errors++;
\+?{d}+ posno++;
-{d}+ negno++;
\+?{d}*\.{d}+ posfrac++;
-{d}*\.{d}+ negfrac++;
& return 0;
%%
int main()
{
printf("Enter the numbers : ");
yylex();
printf("No of invalid numbers = %d\n",errors);
printf("No of positive numbers = %d\n",posno);
printf("No of negative numbers = %d\n",negno);
printf("No of positive fractions = %d\n", posfrac);
printf("No of negative fractions = %d\n", negfrac);
}
