//
//  main.m
//  Block的深入理解
//
//  Created by Biao on 16/5/5.
//  Copyright © 2016年 Bobby. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 *  @author Biao
 *
 *  Block概念
 */

/*
    1.概念:是一种闭包语法,闭包就是将一段代码封装起来,可以将闭包当做参数和返回值类使用.
    
    block就是封装了一段代码块,可以在如何时候调用执行,block可以作为函数(方法)的参数和返回值来使用,跟函数指针像类似
    
    常用地方:多线程,异步请求,集合遍历,集合的排序,动画...等等.
 
    2.语法:
        block的定义,定义一个block变量
        返回值类型(^block名字)(参数);
 
        block的实现:
        ^返回值类型 (参数){
            //代码
        };
 
        block的调用:
        block的名称(实参);
 */






//全局变量
int i = 100;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //1.block的定义,block就是变量名
        int (^block)(int,int);
        
        //2.block的实现,可以直接将实现的代码写在其他的函数或者方法中,函数指针除外
        block = ^int(int a,int b){
            return a+b;
        };
        
        //3.block的调用
        int r = block(1,2);
        NSLog(@"r = %d",r);
        
        /**
         *  @author Biao
         *
         *  4.block使用的注意点
         */
        
        //4.1 block和局部变量
        int a = 10;
        __block int c = 20;
        
        int (^block1)(int) = ^int(int b){
            /**
             *  @author Biao
             *
             *  block可以修改,有__block修饰的局部变量
             */
            c = 10;
            /**
             *  @author Biao
             *
             *  block默认情况下是不可以修改外部的局部变量
             */
            //a = 100;
            
            return  a+b;
        };
        
        r = block1(2);
        NSLog(@"r = %d",r);
        
        /**
         *  @author Biao
         *
         *  4.2 block和全局变量
         */
        int (^block3)(int) = ^int(int a){
            /**
             *  @author Biao
             *
             *  block内部可以直接修改全局变量
             */
            i = 30;
            /**
             *  @author Biao
             *
             *  同时block内部也可以直接访问全局变量
             */
            return a + i;
        };
        
        r = block3(10);
        NSLog(@"r = %d",r);
        
        /**
         *  @author Biao
         *
         *  5.block的其他写法
         */
        
        /**
         *  @author Biao
         *
         *  5.1实现block的时候返回值类型可以不写
         */
        int (^block4)(int) = ^(int a){
            return a;
        };
        r = block4(20);
        NSLog(@"r = %d",r);
        
        /**
         *  @author Biao
         *
         *  5.2没有参数的时候,实现block的时候()可以省略
         */
        int (^block5)() = ^{
            return 100;
        };
        r = block5();
        NSLog(@"r = %d",r);
        
        
    }
    return 0;
}
