/**
    * strip an html file of all tags and comments  
       
    *
    * Tamsin Rogers 
    * 9/30
    *flex task3.yy
    *gcc -o task3 lex.yy.c -ll
    *./task3 ex1.html


    
*/

%%

[ \t\n]+          /* eat up whitespace */

"<"p">"	{printf("\n");}	/* replace tags with new line */

"<"[^<>]+">" /* get rid of all tags */

.  { printf("%s", yytext); }	/* input a string */

%%

int main (int argc, char *argv[]) {

	if(argc>1)
            yyin=fopen(argv[1],"r"); 
    yylex(); 
    return 0;
}  

