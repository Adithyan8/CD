%{
	int nlines=0,nwords=0,nchars=0,nspaces=0;
%}

%%
\n nwords++;nlines++;
[\t ' '] nwords++;nspaces++;
[a-zA-Z0-9] nchars++;
[$] return 0;
. nchars++;

%%
int yywrap(void)  
{}

int main(int argc, char*argv[]) 
{
	yylex();
	printf("Lines = %d\nChars=%d\nWords=%d\nSpaces=%d\n",nlines,nchars,nwords,nspaces);

	return 0;
} 
