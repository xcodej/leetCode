#include <stdio.h>
//  折半查找
int binarySearch(int *a, int num, int length);
//  折半查找递归
int binarySearchByR(int *a, int num, int low, int high);
//  顺序查找
int SequenceSearch(int *a, int num, int length);
int main() {
    int a[] = {1,2,3,4,5,6};
    int result = SequenceSearch(a,6,6);
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

int SequenceSearch(int *a, int num, int length) {
    for (int i = 0; i < length; ++i)
        if (a[i] == num) return i;
    return -1;
}