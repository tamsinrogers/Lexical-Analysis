/**
* reads in a text file and tells the number of rows and characters and also how many of 
	each vowel [a, e, i, o, u] are in the file
    *
    * Tamsin Rogers
    * 9/30
*/

lower[a-z]
upper[A-Z]
WhiteSpace [ \t] 

%%
{lower} {*yytext=((*yytext-'a'+13)%26)+'a';    printf("%c",*yytext);}
{upper} {*yytext=((*yytext-'A'+13)%26)+'A';   printf("%c",*yytext);}

%%

int yywrap(){return 1;}

int main (int arg, char *argv[]) {
    yylex();
    
    
    
    return 0;
}  