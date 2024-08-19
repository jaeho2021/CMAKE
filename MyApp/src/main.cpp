#include "MyLibrary.h"
#include "MyLibrary_ext.h"

int main() {
    MyLibrary lib;
    MyLibrary_ext lib_ext;
    lib.hello();
    lib_ext.bye();
    return 0;
}
