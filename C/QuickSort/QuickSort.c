#include<stdio.h>
void quickSort(int * array, int left, int right){
	if (left >= right) return;
	int i = left, j = right;
	int point = array[i];
	while (i < j) {
		while (i < j && array[j] >= point) { j--;}
		array[i] = array[j];
		while (i < j && array[i] <= point) { i++;}
		array[j] = array[i];	
	}
	array[i] = point;
	quickSort(array, left, i - 1);
	quickSort(array, i + 1, right);
}

int main() {
	int a[] = {5,4,7,6,3,8};
	quickSort(a,0,5);
	for(int i = 0; i < 6; i++) {
		printf("%d", a[i]);
	}
}
