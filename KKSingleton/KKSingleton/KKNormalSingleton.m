//
//  KKNormalSingleton.m
//  KKSingleton
//
//  Created by Kyle on 16/5/18.
//  Copyright © 2016年 DiDi. All rights reserved.
//

#import "KKNormalSingleton.h"
#import <objc/runtime.h>

static KKNormalSingleton *sharedInstance = nil;

@implementation KKNormalSingleton

+ (instancetype)singleton
{
    static dispatch_once_t token;
    
    dispatch_once(&token, ^{
        sharedInstance = [KKNormalSingleton new];
    });
    return sharedInstance;
}

@end
