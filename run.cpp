// testing C++ !

/*

Tamsin Rogers & Rayna Hata
9/30
g++ -o run run.cpp
./run

*/

#include <iostream>								// works with cout

int main() 
{

	char greeting[] = "Hello World!";			// simple character array

    for (int i = 0; i < sizeof(greeting); i++) 
    {
    	std::cout << greeting[i] << "\n";		// print output
	}
    
    return 0;
}
