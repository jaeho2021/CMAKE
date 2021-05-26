#include <iostream>
#include <thread>
#include "shape.h"

using namespace std;

Rectangle::Rectangle(int width, int height) : _width(width), _height(height)
{
}

void foo(){ cout << "foo()" << endl;}

int Rectangle::GetSize() const 
{
	thread t(foo);
	t.join();

	return _width * _height;
}

