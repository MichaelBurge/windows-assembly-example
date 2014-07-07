#include <stdio.h>
#include <malloc.h>

int example() { return 20; }

struct derp {
    int foo;
    int bar;
};

int answer()
{
    int x = 0;
    for (int i = 0; i < 10; i++) {
	x += i / 5;
    }
    return x;
}

int main() {
    printf("%d", answer());
    // int x = 0;
//  scanf("%d", &i);
    // for (int i = 0; i < 10; i++) {
    // 	x += i % 5;
    // 	printf("derp%d", x);
    // }
    // derp p;
    // p.foo = 50;
    // p.bar = example();
    printf("aoeu");
    // printf("%d%d %d%d %d%d %d\n", 1, 2, 3, 4, 5, 6, 7);
    return 0;
}
