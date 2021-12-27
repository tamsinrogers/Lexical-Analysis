/**
    * clite parser 
       
    *
    * Tamsin Rogers 
    * 9/30
    *flex task4.yy
    *gcc -o task4 lex.yy.c -ll
    *./task4 parse1.clite

*/

DIGIT  [0-9]
ID     [a-z][a-z0-9]*

%% 
\n 
int     {
        printf("Keyword-%s\n", yytext );
        }

  


[(]     {
        printf("Open-paren\n", yytext );
        }  


[)]     {
        printf("Close-paren\n", yytext );
        } 

"=="|"<"|">"|"<="|">=" {
        printf("Comparison- %s\n", yytext );
        } 


{DIGIT}+    {
            printf("Integer- %s\n", yytext,
                    atoi( yytext ) );
            }

if|then|begin|end|procedure|function        {
            printf("keyword-%s\n", yytext );
            }


[{]     {
        printf("Open-bracket\n", yytext );
        }  


[}]     {
        printf("Close-bracket\n", yytext );
        } 

=       {
        printf("Assignment\n", yytext );
        } 

{DIGIT}+"."{DIGIT}*        {
            printf("Float- %s\n", yytext,
                    atof( yytext ) );
            }

"+"|"- "|"*"|"/" {
            printf("Operator- %s\n", yytext);
                    
            }


[a-zA-Z]+?[a-zA-Z0-9]+?   {
    printf("Identifier-%s\n", yytext );
        }  
";"	{printf("");}	/* replace tags with new line */
%%
int main ( int argc, char *argv[] ) {	 
    if(argc>1)
            yyin=fopen(argv[1],"r"); 
    yylex(); 
	return 0; 
}