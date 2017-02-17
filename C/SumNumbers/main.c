#include <stdio.h>
// 从1累加到n 不使用乘除法 if while等关键字
int sum = 0;

int main() {
    sumNumbers(10);
    printf("%d\n",sum);
    return 0;
}

int sumNumbers(int number) {
    sum += number;
    return number - 1 && sumNumbers(number - 1);
}