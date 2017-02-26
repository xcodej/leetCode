#include <stdio.h>
void sort(int *a, int left, int right);
int main() {
    int a[] = {5, 3, 1, 2, 4, 6, 7, 5, 3, 10, 11, 12 ,10};
    sort(a, 0, 12);
    for (int i = 0; i < 13; ++i) {
        printf("%d\n",a[i]);
    }
    return 0;
}

void sort(int *a, int left, int right)
{
    if(left >= right) {
        return ;
    }
    int i = left;
    int j = right;
    int key = a[left];

//    while(i < j) {
        while(i < j && key <= a[j]) {
            j--;
        }

        a[i] = a[j];

        while(i < j && key >= a[i]) {
            i++;
        }

        a[j] = a[i];


    a[i] = key;
    sort(a, left, i - 1);
    sort(a, i + 1, right);
}