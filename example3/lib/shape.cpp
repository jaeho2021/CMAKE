#include <iostream>
#include "shape.h"

using namespace std;

Rectangle::Rectangle(int width, int height) : _width(width), _height(height)
{
}

int Rectangle::GetSize() const 
{
	return _width * _height;
}

