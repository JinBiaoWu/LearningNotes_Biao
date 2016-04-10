//
//  3.打印输出大写字母A~Z,剔除F~K,显示剩下的所有的字符.c
//  Practice
//
//  Created by Biao on 16/4/8.
//  Copyright © 2016年 Biao. All rights reserved.
//

#include <stdio.h>

int main()
{
    /**
     *  打印输出大写字母A~Z,剔除F~K,显示剩下的所有的字符
     */
    
    char i = 0;
    
    /**
     *  循环打印A~Z
     */
    for(i = 'A';i<='Z';i++)
    {
        //判断是否为字母F~K
        if(i>='F' && i<='K')
        {
            continue;
        }
        printf("%c\n",i);
    }


    return 0;
}