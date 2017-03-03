//
//  MementoCenterPotocol.h
//  MementoPattern
//
//  Created by wupeng on 2017/3/3.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MementoCenterPotocol <NSObject>

- (id)currentState;

- (void)recoverFromState:(id)state;

@end
