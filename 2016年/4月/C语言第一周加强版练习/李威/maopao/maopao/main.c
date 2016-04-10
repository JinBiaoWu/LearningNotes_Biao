//
//  main.c
//  maopao
//
//  Created by Biao on 16/4/9.
//  Copyright © 2016年 Biao. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
int main(int argc, const char * argv[]) {
    /*
     i 是轮数,总共是比了4轮
     
     1    2    3    4
     
     0    1    2    3
     j 是表示每一轮比的次数
         4-i次
     4次  3次  2次   1次
     */
    printf("请输入一个数组的大小\n");
    int number;
    scanf("%d",&number);
    
    int array1[number];
    
    for (int i = 0; i < number; i ++) {
        int numberARC = arc4random()%100;
        array1[i] = numberARC;
        printf("%d ",array1[i]);
    }
    printf("\n");
    
    for (int i = 0; i < number-1; i++) {
        for (int j = 0; j < number-1-i; j ++) {
            if (array1[j]>array1[j+1]) {
                int temp = array1[j+1];
                array1[j+1] = array1[j];
                array1[j] = temp;
            }
        }
        }
    for (int i = 0; i < number; i ++) {
        printf("%d ",array1[i]);
    }
    printf("\n");
    return 0;
}
