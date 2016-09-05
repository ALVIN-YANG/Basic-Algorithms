//
//  main.m
//  SelectionSort
//
//  Created by 杨卢青 on 16/9/5.
//  Copyright © 2016年 杨卢青. All rights reserved.
//

#import <Foundation/Foundation.h>

void selectionSort(int a[], int n) {
	int i, index;
	if (n == 0) {
		return;
	}
		//待排序序列 记录最小的下标为index
	for(index = i = 0; i <= n; i++) {
		if (a[i] < a[index]) {
			index = i;
		}
	}
		//待排序列最小元素 与 首元素进行交换
		if(index != 0) {
			a[0] = a[0] + a[index];
			a[index] = a[0] - a[index];
			a[0] = a[0] - a[index];
		}
			//待排序列元素减少, 移动指针, 递归待排序列
		selectionSort(a + 1, n - 1);
}

int main(int argc, const char * argv[]) {
	@autoreleasepool {
	    // insert code here...
		int arr[8] = {6, 34, 56, 1, 5, 3, 65, 7};
		selectionSort(arr, 8);
		for (int i = 0; i < 8; i++) {
			printf("%d ", arr[i]);
		}
		printf("\n");
	}
    return 0;
}
