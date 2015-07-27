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

@property (nonatomic,readonly)NSString *name;
-(void)aaa;
@end
