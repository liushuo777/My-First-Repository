//
//  SecondClass.h
//  test
//
//  Created by LiuShuo on 15/7/24.
//  Copyright (c) 2015年 LiuShuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestDelegateProtocol.h"
@interface SecondClass : NSObject<TestDelegateProtocol>

@property (nonatomic,strong)NSString *name;
@property (nonatomic,readonly)NSString *age;

-(void)testFirstProperty:(NSString *)first second:(NSString *)b third:(int)c;
-(void)aaa;
@end
