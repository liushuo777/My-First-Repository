//
//  FirstClass.h
//  test
//
//  Created by LiuShuo on 15/7/24.
//  Copyright (c) 2015年 LiuShuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestDelegateProtocol.h"

@class FirstClass;
@protocol FirstClassDelegate <NSObject>

-(void)FireClass:(FirstClass *)firstClass didSec:(NSInteger )inta;

@end
@interface FirstClass : NSObject<TestDelegateProtocol>

@property (nonatomic, strong)NSString *name;
@property (nonatomic,assign)id <FirstClassDelegate>delegate;

@end
