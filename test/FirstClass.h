//
//  FirstClass.h
//  test
//
//  Created by LiuShuo on 15/7/24.
//  Copyright (c) 2015年 LiuShuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestDelegateProtocol.h"
@interface FirstClass : NSObject<TestDelegateProtocol>

@property (nonatomic, strong)NSString *name;

@end
