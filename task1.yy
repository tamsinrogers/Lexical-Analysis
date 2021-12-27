/**
* reads through a list of strings and moves the letters 13 spaces forward 
    *
    * Tamsin Rogers 
    * 9/30
    *flex task1.yy
    *gcc -o task1 lex.yy.c -ll
    *./task1 test.txt
*/


lower[a-z]
upper[A-Z]

%%
{lower} {*yytext=((*yytext-'a'+13)%26)+'a';    printf("%c",*yytext);}
{upper} {*yytext=((*yytext-'A'+13)%26)+'A';   printf("%c",*yytext);}


%%
int yywrap(){return 1;}


int main (int argc, char *argv[]) {
    if(argc>1)
            yyin=fopen(argv[1],"r"); 
    yylex(); 
    return 0;
}  