//
//  DemoView.m
//  MementoPattern
//
//  Created by wupeng on 2017/3/3.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import "DemoView.h"

@implementation DemoView

//返回demoView的frame
- (id)currentState {
    return @{@"frame" : NSStringFromCGRect(self.frame)};
}

//恢复demoView的frame
- (void)recoverFromState:(id)state {
    NSDictionary *data = state;
    [UIView animateWithDuration:3.f animations:^{
        
        self.frame = CGRectFromString(data[@"frame"]);
    }];
}

@end
