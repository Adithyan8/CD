%{
  #include<stdio.h>
  #include<stdlib.h>
%}

%%
S:X Y;
X:'a'X'b'
 |
 ;
Y:'b'Y'c'
 |
 ;
%%
int main()
{
 printf("Enter the string : ");
 yyparse();
 printf("Valid string\n");
}

int yyerror()
{
 printf("Invalid string\n");
 exit(0);
}
