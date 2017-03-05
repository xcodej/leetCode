#include <stdio.h>
int binarySearch(int *a, int num, int length);
int binarySearchByR(int *a, int num, int low, int high);
int main() {
    int a[] = {1,2,3,4,5,6};
    int result = binarySearchByR(a,7,0,5);
    printf("%d\n",result);
    return 0;
}

int binarySearch(int *a, int num, int length) {
    int low = 0, high = length - 1, mid;
    mid = (low + high) / 2;
    while (low <= high) {
        if (a[mid] == num) return mid;
        if (a[mid] > num) high = mid - 1;
        if (a[mid] < num) low = mid + 1;
    }
    return -1;
}

int binarySearchByR(int *a, int num, int low, int high) {
    if (low > high) return -1;
    int mid = (low + high) / 2;
    if (a[mid] == num) return mid;
    if (a[mid] > num) return binarySearchByR(a, num, low, mid - 1);
    if (a[mid] < num) return binarySearchByR(a, num, mid + 1, high);
}