//
//  ViewController.m
//  test
//
//  Created by LiuShuo on 15/7/23.
//  Copyright (c) 2015年 LiuShuo. All rights reserved.
//

#import "ViewController.h"
#import "FirstClass.h"
#import "SecondClass.h"
#import "TestDelegateProtocol.h"
#import "ThirdClass.h"

@interface testView : UIView

-(instancetype)initWithFrame:(CGRect)frame;
@end

@implementation testView

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

@end

@interface ViewController(Big)

+(void)changColor;

@end

@implementation ViewController(Big)

+(void)changColor{
    NSLog(@"change");
}

@end

@interface ViewController ()<FirstClassDelegate>

@property (nonatomic,strong)NSMutableArray *a;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.a =[[NSMutableArray alloc]init];
    FirstClass *aclass = [[FirstClass alloc]init];
    aclass.delegate = self;
    SecondClass *bclass = [[SecondClass alloc]init];
    ThirdClass *cClass = [[ThirdClass alloc]init];
    
    
    
    Class c = NSClassFromString(@"FirstClass");
    FirstClass *obj = [[c alloc]init];
    
    
    
    
    obj.delegate= self;
    obj.name= @"haha";
    [self.a addObject:aclass];
    [self.a addObject:bclass];
    [self.a addObject:cClass];
    [[self class]changColor];
    testView *t = [[testView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self.view addSubview:t];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button1:(id)sender {
    id <TestDelegateProtocol> de = [self.a objectAtIndex:2];
    [de firstLog];
    [de secondLog];
//    NSLog(@"%@",[de getName]);
}

- (IBAction)button2:(id)sender {
//    id <TestDelegateProtocol> de = [self.a objectAtIndex:1];
//    [de firstLog];
//    [de secondLog];
    SecondClass *c = [[SecondClass alloc]init];
    [c aaa];
}
@end
