// main.cpp
#include <iostream>
#include "my_header.h"

int main() {
    std::cout << "Hello, World!" << std::endl;
    my_function();
#ifdef DEBUG
    std::cout << "This is Debug log!" << std::endl;
#endif
    return 0;
}