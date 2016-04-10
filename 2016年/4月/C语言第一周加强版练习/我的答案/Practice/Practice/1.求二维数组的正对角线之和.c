//
//  1.求二维数组的正对角线之和.c
//  Practice
//
//  Created by Biao on 16/4/8.
//  Copyright © 2016年 Biao. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...

    /**
     *  求二维数组的正对角线之和
     */
    
    /*
        1 2 3 4 
        2 2 3 4 
        3 2 3 4 
        4 2 3 4
     */
    
    /**
     *  第一种写法,直接赋值
     */
    int brr[4][4] = {{1,2,3,4},{2,2,3,4},{3,2,3,4},{4,2,3,4}};

    /**
     *  第二种写法,循环赋值
     */
//    printf("请输入数据:\n");
//    for(int i=0;i<4;i++)
//    {
//        for(int j=0;j<4;j++)
//        {
//            scanf("%d",&brr[i][j]);
//        }
//    }
    
    
    /**
     *  遍历打印
     */
    for(int i=0;i<4;i++)
    {
        for(int j=0;j<4;j++)
        {
            printf(" %d ",brr[i][j]);
        }
        printf("\n");
    }
    
    
    /**
     *  创建求和变量
     */
    int sum = 0;
    
    /**
     *  循环遍历
     */
    for(int i=0;i<4;i++)
    {
        for(int j=0;j<4;j++)
        {
            /**
             *  判断行和列是否相同
             */
            if(i == j)
            {
                sum += brr[i][j];
            }
        }
    }
    
    //打印对角线之和
    printf("sum = %d\n",sum);
    
    return 0;
}
