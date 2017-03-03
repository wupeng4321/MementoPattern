//
//  ViewController.m
//  MementoPattern
//
//  Created by wupeng on 2017/3/3.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import "ViewController.h"
#import "DemoView.h"
#import "NSObject+MementoCenter.h"

@interface ViewController ()

@property (nonatomic, strong) DemoView *demoView;
@end

@implementation ViewController


/**
 本demo记录demoView的状态，然后重置
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    _demoView = [[DemoView alloc] init];
    //先运行test1 然后注释test1，运行test2，注意log的不同
//    [self test1];
//    [self test2];
    [self.view addSubview:_demoView];
    _demoView.backgroundColor = [UIColor blackColor];
}

- (void)demoViewInit {
}

- (void)test1 {
    
    _demoView.frame     = CGRectMake(100, 100, 100, 100);

    [_demoView saveStateWithKey:@"demoView"];
    NSLog(@"%@", _demoView);
}

- (void)test2 {
    //注意log
    NSLog(@"%@", _demoView);
    NSLog(@"*******************");
    [_demoView recoverFromStateWithKey:@"demoView"];
    NSLog(@"%@", _demoView);
}

@end
