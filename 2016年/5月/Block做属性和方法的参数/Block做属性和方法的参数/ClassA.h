//
//  ClassA.h
//  Block做属性和方法的参数
//
//  Created by Biao on 16/5/5.
//  Copyright © 2016年 Bobby. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ClassA;
/**
 *  @author Biao
 *
 *  block函数
 */
typedef void (^Listen)(ClassA*);

@interface ClassA : NSObject
@property (nonatomic,copy)NSString *name;
- (instancetype)initWithName:(NSString *)name;

/**
 *  @author Biao
 *
 *  block做属性
 */
@property (nonatomic,assign)Listen listen;

- (void)click;

/**
 *  @author Biao
 *
 *  block做方法的参数
 */
- (void)click:(Listen)listen;
@end
