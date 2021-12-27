CS333 - Project #2 - README
Tamsin Rogers
09/30/2021

Directory Layout:
Project2
├── lex.yy.c
├── task1.yy
├── task2.yy
├── task3.yy
├── task4.yy
├── ex.html
├── ex2.html
├── parse1.clite
├── test.txt
├── run.cpp

Run and build configuration for C:
macOS Big Sur 11.5.2 - Apple LLVM version 12.0.5 (clang-1205.0.22.11)

Description for each subsection:

C:
	This is the C programming task. The task1.c, task2.c, task3.c, etc. files meet the 
	specifications of task 1, task 2, task 3, etc.  

	task1.yy reads through a file and moves the letters 13 spaces forward
	The c code for this is named lex1.yy.c 
	The program reads the included text file test.x
	
 			   
  Compile:
	flex task1.yy
	gcc -o task1 lex1.yy.c -ll

  Run:
	/.task1 test.txt


  Input:
		a b c d e
        f g h i j
        k l m n o
        p q r s t
        u v w x

    Output:
        n o p q r
        s t u v w
        x y z a b
        c d e f g
        h i j k

	
    task2.yy reads in a text file and tells the number of rows and characters and also how many of 
	each vowel [a, e, i, o, u] are in the file


    Compile:
        gcc -o task2 lex.yy.c -ll

    Run:
        ./task2 test.txt


	Input:
			a b c d e
			f g h i j
			k l m n o
			p q r s t
			u v w x

	Output:
		Number of Lines:5
		Number of Chars:46
		Number of As:1
		Number of Es:1
		Number of Is:1
		Number of Os:1
		Number of Us:1


	task3.yy reads in a HTML file and strips it of tags and comments. 


	Compile:
		gcc -o task3 lex.yy.c -ll

	Run:
		./task3 ex1.html

	Output: 
		 Project2|CS333CS333TopicsNotesHomeworkHomework1Homework2Homework3Homework4Homework5Homework6Homework7Homework8Homework9ProjectsProject1Project2Project3Project4Project5Project6Project7Project8Project9ReferenceMaterialsCS333ProgrammingLanguagesProject2$(function(){$("#index").addClass("active")})LexicalAnalysis
		Thefirstthingwehavetodowithanyprogramminglanguageisbuildalexicalanalyzerthatconvertsatextstringintoaseriesoftokens.Therearelotsoftoolsforhandlingthis.Forthisassignment,you'llmakeuseoftheFlexlexicalanalysistoolandbuildafewdifferentparsers.Tasks
		Flexisanopensourcelexicalanalysistool.Thewayitworksisyoufirstcreateaninputfilethatdefinessymbolsandproductionrulesthatdescribehowtoparseatextfile.ThenyourunFlexanditproducesaCfile.YoucanthencompiletheCfileandrunitonsomeinput.   


	task4.yy reads in a clite code, parses through it and creates a seuqence of strings. 

	Compile:
		gcc -o task3 lex.yy.c -ll

	Run:
		./parse parse1.clite


	Output:
		Keyword-int
		Identifier-main
		Open-paren
		Close-paren
		Open-bracket
		Keyword-int
		Identifier-a
		Assignment
		Integer- 6
		Keyword-int
		Identifier-b
		Assignment
		Float- 5.0
		keyword-if
		Open-paren
		Identifier-a
		Comparison- <
		Identifier-b
		Close-paren
		Open-bracket
		Identifier-a
		Assignment
		Identifier-a
		Operator- +
		Identifier-b
		Close-bracket
		Close-bracket








