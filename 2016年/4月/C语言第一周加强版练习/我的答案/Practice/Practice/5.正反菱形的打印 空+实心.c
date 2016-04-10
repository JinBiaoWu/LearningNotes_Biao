//
//  6.正反菱形的打印 空+实心.c
//  Practice
//
//  Created by Biao on 16/4/8.
//  Copyright © 2016年 Biao. All rights reserved.
//

#include <stdio.h>

int main()
{
    /**
     *  正反菱形的打印 空+实心
     */
    
    //创建变量,x轴,y轴
    int r = 5;
    int x;
    int y;
    
    /**
     *  打印空心菱形
     */
    for(y = 0;y <= 2 *r;y++)
    {
        for(x = 0;x <= 2*r;x++)
        {
            (y==r-x || y==x-r || y==x+r || y==-x+3*r)?printf("*"):printf(" ");
        }
        printf("\n");
    }
    
    /**
     *  打印实心菱形
     */
    for(y=0;y<=2*r;y++)
    {
        for(x=0;x<=2*r;x++)
        {
            (y>=r-x && y>=x-r && y<=x+r && y<=-x+3*r)?printf("*"):printf(" ");
        }
        printf("\n");
    }
    

    return 0;
}