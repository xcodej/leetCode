#include <stdio.h>

int main() {
    for (int i = 1; i < 10; ++i) {
        printf("%d\n", fibo(i));
        printf("%d\n", fiboByR(i));
    }

    return 0;
}

int fiboByR(int n) {
    if (n == 0) return 0;
    if (n == 1 || n == 2) return 1;
    return fiboByR(n - 1) + fiboByR(n - 2);
}

int fibo(int n) {
    if (n ==1 || n == 2) return 1;
    int n1 = 1, n2 = 1;
    int sum = 0;
    for (int i = 0; i < n - 2; ++i) {
        sum = n1 + n2;
        n2 = n1;
        n1 = sum;
    }
    return sum;
}