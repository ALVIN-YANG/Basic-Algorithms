//
//  main.m
//  InsertionSort
//
//  Created by 杨卢青 on 16/9/2.
//  Copyright © 2016年 杨卢青. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 插入排序就是每一步都将一个待排数据按其大小插入到已经排序的数据中的适当位置，直到全部插入完毕。
 插入排序方法分直接插入排序和折半插入排序两种，这里只介绍直接插入排序，折半插入排序留到“查找”内容中进行。

 */
void swap(int *left, int *right)
{
	*left ^= *right;
	*right ^= *left;
	*left ^= *right;
}

void InsertSort(int a[], int n)
{
	int i, j;
	/**
	 *
	 */
	for (i = 1; i < n; i++)
		for (j = i - 1; j >= 0 && a[j] > a[j + 1]; j--)
			swap(&a[j], &a[j + 1]);
}

int main(int argc, const char * argv[]) {
	@autoreleasepool {
			// insert code here...
		int arr[8] = {6, 34, 56, 1, 5, 3, 65, 7};
		InsertSort(arr, 8);
		for (int i = 0; i < 8; i++) {
			printf("%d ", arr[i]);
		}
		printf("\n");
	}
	return 0;
}
