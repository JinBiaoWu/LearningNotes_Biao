//
//  ClassA.m
//  Block做属性和方法的参数
//
//  Created by Biao on 16/5/5.
//  Copyright © 2016年 Bobby. All rights reserved.
//

#import "ClassA.h"

@implementation ClassA

- (instancetype)initWithName:(NSString *)name
{
    if(self = [super init])
    {
        self.name = name;
    }
    return self;
}

- (void)click
{
    /**
     *  @author Biao
     *
     *  外部谁调用了block就传谁进来
     *  把当前调用的对象赋值给block参数
     */
    self.listen(self);
}

- (void)click:(Listen)listen
{
    /**
     *  @author Biao
     *
     *  外部属性赋值给内部block参数
     */
    listen(self);
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@",self.name];
}


@end
