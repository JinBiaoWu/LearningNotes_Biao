//
//  main.c
//  冒泡排序
//
//  Created by Wiley on 16/4/8.
//  Copyright © 2016年 Wiley. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
int main(int argc, const char * argv[]) {
    
    //这部分是增加随机数的。
    printf("请输入一个数组的大小\n");
    int number;
    scanf("%d",&number);
    int array[number];
    for (int i = 0; i <number; i ++){
      int numberARC =  arc4random()%100;
             array[i] = numberARC;
            printf("%d ",array[i]);
    }
    printf("\n");
    
    /*
     首先我们确定了 i 它总共是比4轮
     i （轮数）           1        2        3         4
     接下来我们确定 j 表示的是每一轮比较的次数
     j（比较次数）   4次     3次    2次      1次
      因为数组是从0开始的，所以我们i和j也从0开始方便一点。
     i         0        1         2         3
     j        4-i    4-i     4-i      4-i
     */
    
    //这部分是正常逻辑
    for (int i = 0; i <number - 1; i++) {
        for (int j = 0; j < number - i -1; j ++) {
            if (array[j]>array[j+1]) {
                int temp = array[j+1];
                array[j+1] = array[j];
                array[j] = temp;
            }
        }
    }
    
    for (int i = 0; i <number; i++) {
        printf("%d ",array[i]);
    }
    printf("\n");
    
    return 0;
}
