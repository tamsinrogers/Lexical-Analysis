/**
    * reads in a text file and tells the number of rows and characters and also how many of 
	each vowel [a, e, i, o, u] are in the file  
       
    *
    * Tamsin Rogers 
    * 9/30
    *flex task2.yy
    *gcc -o task2 lex.yy.c -ll
    *./task2 test.txt


    
*/

*/ variable initialization */

    int a_count=0;
    int e_count=0;
    int i_count=0;
    int o_count=0;
    int u_count=0;
    int lines=0;
    int chars=0;


%%
[aA] {a_count++;}
[eE] {e_count++;}
[iI] {i_count++;}
[oO] {o_count++;}
[uU] {u_count++;}
\n  {chars++; lines++;}
.  { chars++; }

%%


int main (int argc, char *argv[]) {
    

    if (argc>1)
            yyin=fopen(argv[1],"r");
    yylex();

    printf("Number of Lines:%d\n",lines);
    printf("Number of Chars:%d\n",chars);
    printf("Number of As:%d\n",a_count);
    printf("Number of Es:%d\n",e_count);
    printf("Number of Is:%d\n",i_count);
    printf("Number of Os:%d\n",o_count);
    printf("Number of Us:%d\n",u_count);
    return 0;
}  

