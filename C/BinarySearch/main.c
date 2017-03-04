#include <stdio.h>

int main() {
    printf("Hello, World!\n");
    return 0;
}

int BinarySearch(int *a, int num, int lenght) {
    int low = 0, high = lenght - 1, mid;
    while (low <= high) {
        mid = (low + high) / 2;
        if (a[mid] == num) return mid;
        if (a[mid] < num) low = mid + 1;
        if (a[mid] > num) high = mid - 1;
    }
    return -1;
}

int BinarySearchByR(int *a, int num, int low, int high) {
    int mid = (low + high) / 2;
    if (a[mid] == num) return mid;
    if (a[mid] > num) return BinarySearchByR(a, num, low, mid - 1);
    if (a[mid] < num) return BinarySearchByR(a, num, mid + 1, high);
}