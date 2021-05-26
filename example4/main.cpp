#include <iostream>
#include "shape.h"

using namespace std;

int main ()
{
	Rectangle rt(10, 20);
	
	int ret = rt.GetSize();

	cout << "Size: " << ret << endl;
	
	return 0;
}
