#include <iostream>
#include <thread>
#include "shape.h"

using namespace std;

Rectangle::Rectangle(int width, int height) : _width(width), _height(height)
{
}

void foo(){ cout << "foo() using thread" << endl;}
void goo(){ cout << "goo()" << endl;}

int Rectangle::GetSize() const 
{
#ifdef USE_THREAD
	thread t(foo);
	t.join();
#else
	goo();
#endif

	return _width * _height;
}

