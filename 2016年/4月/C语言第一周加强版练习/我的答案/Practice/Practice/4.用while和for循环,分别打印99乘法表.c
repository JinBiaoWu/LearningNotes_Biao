//
//  4.用while和for循环,分别打印99乘法表.c
//  Practice
//
//  Created by Biao on 16/4/8.
//  Copyright © 2016年 Biao. All rights reserved.
//

#include <stdio.h>


int main()
{
    /**
     * 用while和for循环,分别打印99乘法表
     */

    int i = 0;
    int j = 0;
    
    //外层循环控制行
    while (i<10)
    {
        //每次1*2=2 2*2=4
        j=1;
        while (j<=i)
        {
            //输出 每一行 每一列的内容
            printf("\t%d*%d=%d ",j,i,j*i);
            j++;
        }
        //下一行
        i++;
        printf("\n");
    }
    
    printf("\n*****************************************************************************\n");
    
    
    for (i=0; i<10; i++)//行
    {
        for(j=1;j<=i;j++)//每一行有多少列
        {
            printf("\t%d*%d=%d",j,i,j*i);
        }
        printf("\n");
    }
    
    
    printf("\n*****************************************************************************\n");
    
    //行
     i = 1;
    //列
     j = 0;
    
    do
    {
        j=1;
        do
        {
            printf("\t%d*%d=%d",j,i,j*i);
            j++;//下一列
        }
        while (j<=i);//列数
        //换一行
        printf("\n");
        i++;
    }
    while (i<10);//行数

    return 0;
}