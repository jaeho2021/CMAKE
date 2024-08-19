// main.cpp
#include <iostream>

extern "C" void print_c();

int main() {
    print_c();
#ifdef ONLY_CPP_FILE
    std::cout << "This is a C++ file with ONLY_CPP_FILE defined." << std::endl;
#else
    std::cout << "This is a C++ file." << std::endl;
#endif
    return 0;
}