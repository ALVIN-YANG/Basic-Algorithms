//
//  main.m
//  BubbleSort
//
//  Created by 杨卢青 on 16/8/29.
//  Copyright © 2016年 杨卢青. All rights reserved.
//

#import <Foundation/Foundation.h>

void swap(int *left, int *right)
{
		*left ^= *right;
		*right ^= *left;
		*left ^= *right;
}


// 冒泡排序时间复杂度最好的情况为O(n),最坏的情况是O(n^2)
//改 进：
// 记录一轮下来标记的最后位置，下次从头部遍历到这个位置就Ok
void BubbleSort(int arr[], int num)
{
	int k, j;
	int flag = num;
	while (flag > 0)
	 {
		k = flag;
		flag = 0;  //没有交换说明排序完毕, flag保持0, 退出while
		for (j = 0; j < k; j++)
		 {
			if (arr[j] > arr[j + 1])
			 {
				swap(&arr[j], &arr[j + 1]);
				flag = j + 1;
			 }
		 }
	 }
}


int main(int argc, const char * argv[])
{
	@autoreleasepool
 {
	    // insert code here...
	int arr[8] = {6, 34, 56, 1, 5, 3, 65, 7};
	BubbleSort(arr, 8);
	for (int i = 0; i < 8; i++) {
		printf("%d ", arr[i]);
//		NSLog(@"%d", arr[i]);
	}
		printf("\n");
	}
    return 0;
}
