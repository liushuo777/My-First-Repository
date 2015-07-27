//
//  SecondClass.m
//  test
//
//  Created by LiuShuo on 15/7/24.
//  Copyright (c) 2015年 LiuShuo. All rights reserved.
//

#import "SecondClass.h"

@interface SecondClass()

@property (nonatomic,copy)NSString *age;

@end
@implementation SecondClass

-(void)firstLog{
    self.age = @"年龄";
}

-(void)secondLog{
    NSLog(@"secondClaa--2");
}
-(void)aaa{
    self.age = @"年龄aaa";
}
@end
