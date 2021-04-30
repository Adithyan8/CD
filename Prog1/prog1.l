%{
	int vow=0,con=0;
%}

%%
[aeiuoAEIOU] vow++;
[a-zA-Z] con++;

%%
int yywrap(void)  
{}

int main(int argc, char*argv[]) 
{
	yylex();
	printf("Number of vowels : %d\nNumber of consonants : %d\n",vow,con);
	return 0;
} 
