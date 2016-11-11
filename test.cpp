#include <iostream>
#include <limits.h>

using namespace std;
int main(){
	int a = sizeof(unsigned int);
	int bits = CHAR_BIT *a; 
	cout << a << "  "<< bits <<endl;
	return 0;
}
