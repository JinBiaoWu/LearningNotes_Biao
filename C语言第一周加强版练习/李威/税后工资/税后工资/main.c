//
//  main.c
//  税后工资
//
//  Created by Wiley on 16/4/8.
//  Copyright © 2016年 Wiley. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    printf("请输入您的税前工资\n");
    //税前工资
    int grossSalary;
    //起征点
    int threshold = 3500;
    //五险一金
    int insurance = 1100;
    //应纳税所得额
    int ratepaying;
    //缴纳税额
    int ratepayingSum;
    scanf("%d",&grossSalary);
    ratepaying = grossSalary - threshold - insurance;
    if (ratepaying <= 1455) {
        ratepayingSum = ratepaying *0.03;
        printf("应缴纳税为：%d,税后工资是:%d\n",ratepayingSum,grossSalary- ratepayingSum-insurance);
    }else if (ratepaying >1455 && ratepaying <=4155){
        ratepayingSum = ratepaying *0.1 - 105;
        printf("应缴纳税为：%d,税后工资是:%d\n",ratepayingSum,grossSalary- ratepayingSum-insurance);
    }else if (ratepaying >4155 && ratepaying <=7755){
        ratepayingSum = ratepaying *0.2 - 555;
        printf("应缴纳税为：%d,税后工资是:%d\n",ratepayingSum,grossSalary- ratepayingSum-insurance);
    }else if (ratepaying >7755 && ratepaying <=27255){
        ratepayingSum = ratepaying *0.25 - 1005;
        printf("应缴纳税为：%d,税后工资是:%d\n",ratepayingSum,grossSalary- ratepayingSum-insurance);
    }else if (ratepaying >27255 && ratepaying <=41255){
        ratepayingSum = ratepaying *0.3 - 2775;
        printf("应缴纳税为：%d,税后工资是:%d\n",ratepayingSum,grossSalary- ratepayingSum-insurance);
    }else if (ratepaying >41255 && ratepaying <=57505){
        ratepayingSum = ratepaying *0.35 - 5505;
        printf("应缴纳税为：%d,税后工资是:%d\n",ratepayingSum,grossSalary- ratepayingSum-insurance);
    }else{
        ratepayingSum = ratepaying *0.45 - 13505;
        printf("应缴纳税为：%d,税后工资是:%d\n",ratepayingSum,grossSalary- ratepayingSum-insurance);
    }
    return 0;
}
