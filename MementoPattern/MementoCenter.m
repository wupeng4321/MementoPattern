//
//  MementoCenter.m
//  MementoPattern
//
//  Created by wupeng on 2017/3/3.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import "MementoCenter.h"
#import "FastCoder.h"

@implementation MementoCenter

+ (void)saveMementoObject:(id<MementoCenterPotocol>)object withKey:(NSString *)key {
    NSParameterAssert(object);
    NSParameterAssert(key);
    
    //获取data，通过potocol确定object的那些property需要存储
    id data = [object currentState];
    NSData *tmpData = [FastCoder dataWithRootObject:data];
    
    //存储data
    if (tmpData) {
        [[NSUserDefaults standardUserDefaults] setObject:tmpData forKey:key];
    }
}

+ (id)mementoObjectWithKey:(NSString *)key {
    NSParameterAssert(key);
    
    id data = nil;
    NSData *tmpData = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    
    if (tmpData) {
        data = [FastCoder objectWithData:tmpData];
    }
    return data;
}

@end
