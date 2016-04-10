//
//  2.矩阵反转.c
//  Practice
//
//  Created by Biao on 16/4/8.
//  Copyright © 2016年 Biao. All rights reserved.
//

#include <stdio.h>

int main()
{
    /**
     *  矩阵反转
     */
    
    /*
        1 2 3 4          1 2 3
        2 2 3 4          2 2 2
        3 2 3 4          3 3 3
                         4 4 4
     */
    
    //创建二维数组
    int a[3][4] = {{1,2,3,4},{2,2,3,4},{3,2,3,4}};
    int b[4][3];
    //创建循环变量
    int i,j;
    
    //交换算法
    for(i=0;i<4;i++)
    {
        for(j=0;j<3;j++)
        {
            b[i][j] = a[j][i];
        }
    }
    
    
    /**
     *  循环遍历
     */
    for(i=0;i<4;i++)
    {
        for(j=0;j<3;j++)
        {
            printf("b[%d][%d] = %d\t\t",i,j,b[i][j]);

        }
        printf("\n");
    }
    
    return 0;
}