%{
  #include<stdio.h>
  #include<stdlib.h>
%}

%%
S:'a'S'b'
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
