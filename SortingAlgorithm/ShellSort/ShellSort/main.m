//
//  main.m
//  ShellSort
//
//  Created by 青椒 on 16/9/7.
//  Copyright © 2016年 青椒. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
  希尔排序:
    希尔排序，也称递减增量排序算法，是插入排序的一种更高效的改进版本。
    希尔排序是非稳定排序算法。
 

 */

void shellsort(int *data, int size)
{
  // d 步长 每次 / 2 取整数?
  for (int d = size / 2; d > 0; d /= 2)
    //以步长分组
    for (int i = d; i < size; i += d)
    {
      //当前组的第一个数据
      int key = data[i];
      int j = 0;
      //j = i - d 与上一组比较 当前一个组的第一个值大于当前组的第一个值时, 大 - 小
      //把前一个值付给当前组
      for( j = i - d; j >= 0 && data[j] > key; j -=d)
      {
        
        data[j+d] = data[j];
      }
      //把当前组第一个值付在合适的位置上, 这样步长为1的时候就排完 了
      data[j+d] = key;
    }
}


int main(int argc, const char * argv[]) {
  @autoreleasepool {
      // insert code here...
    int arr[8] = {6, 34, 56, 1, 5, 3, 65, 7};
    shellsort(arr, 8);
    for (int i = 0; i < 8; i++) {
      printf("%d ", arr[i]);
    }
    printf("\n");
  }

    return 0;
}
