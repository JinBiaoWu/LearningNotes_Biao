//
//  main.m
//  Block做属性和方法的参数
//
//  Created by Biao on 16/5/5.
//  Copyright © 2016年 Bobby. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ClassA *c = [[ClassA alloc]initWithName:@"小明"];
        
        /**
         *  @author Biao
         *
         *  listen属性赋值
         */
        c.listen = ^(ClassA *class){
            NSLog(@"%@调用了block",class);
        };
        
        [c click];
        
    }
    return 0;
}
