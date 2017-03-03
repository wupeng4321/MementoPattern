//
//  NSObject+MementoCenter.h
//  MementoPattern
//
//  Created by wupeng on 2017/3/3.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (MementoCenter)


/**
 存储状态

 @param key 键值
 */
- (void)saveStateWithKey:(NSString *)key;


/**
 恢复状态

 @param key 键值
 */
- (void)recoverFromStateWithKey:(NSString *)key;

@end
