//
//  TestDelegateProtocol.h
//  test
//
//  Created by LiuShuo on 15/7/24.
//  Copyright (c) 2015年 LiuShuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TestDelegateProtocol <NSObject>

@optional
-(void)firstLog;
-(void)secondLog;
-(void)thirdLog;
-(NSString *)getName;
@end
