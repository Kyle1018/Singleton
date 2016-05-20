//
//  KKAbsoluteSingleton.h
//  KKSingleton
//
//  Created by Kyle on 16/5/18.
//  Copyright © 2016年 DiDi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KKAbsoluteSingleton : NSObject<NSCopying>

+ (instancetype)singleton;

@end
