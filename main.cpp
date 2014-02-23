#include <stdio.h>

extern "C" int derp();

int main() {
    printf("%d\n", derp());
    return 0;
}
