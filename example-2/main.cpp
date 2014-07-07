#include <stdio.h>

extern "C" int derp();

int example() { return 20; }

int main() {
    printf("%d%d\n", derp(), example());
    return 0;
}
