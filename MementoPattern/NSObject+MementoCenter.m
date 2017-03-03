//
//  NSObject+MementoCenter.m
//  MementoPattern
//
//  Created by wupeng on 2017/3/3.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import "NSObject+MementoCenter.h"
#import "MementoCenter.h"

@implementation NSObject (MementoCenter)

- (void)saveStateWithKey:(NSString *)key {
    NSParameterAssert(key);
    
    id <MementoCenterPotocol> obj = (id <MementoCenterPotocol>)self;
    if ([obj respondsToSelector:@selector(currentState)]) {
        [MementoCenter saveMementoObject:obj withKey:key];
    }
}

- (void)recoverFromStateWithKey:(NSString *)key {
    NSParameterAssert(key);
    
    id <MementoCenterPotocol> obj = (id <MementoCenterPotocol>)self;
    if ([obj respondsToSelector:@selector(recoverFromStateWithKey:)]) {
        id state = [MementoCenter mementoObjectWithKey:key];
        if (state) {
            [obj recoverFromState:state];
        }
    }
}

@end
