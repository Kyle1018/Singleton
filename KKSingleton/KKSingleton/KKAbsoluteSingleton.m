//
//  KKAbsoluteSingleton.m
//  KKSingleton
//
//  Created by Kyle on 16/5/18.
//  Copyright © 2016年 DiDi. All rights reserved.
//

#import "KKAbsoluteSingleton.h"

static KKAbsoluteSingleton *sharedInstance = nil;

@implementation KKAbsoluteSingleton

/**
 *  alloc和allocWithZone:只实现一个
 */
//+ (instancetype)alloc
//{
//    @synchronized(self) {
//        if (!sharedInstance) {
//            sharedInstance = [super alloc];
//        }
//        return sharedInstance;
//    }
//    return nil;
//}

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    @synchronized(self) {
        if (!sharedInstance) {
            sharedInstance = [super allocWithZone:zone];
        }
        return sharedInstance;
    }
    return nil;
}

- (id)copyWithZone:(NSZone *)zone
{
    return self;
}

+ (instancetype)singleton
{
    static dispatch_once_t token;
    
    dispatch_once(&token, ^{
        sharedInstance = [KKAbsoluteSingleton new];
    });
    return sharedInstance;
}

/**
 *  MRC环境下需要处理retain, release, autorelease, retainCount等方法
 */

//- (instancetype)retain
//{
//    return self;
//}

//- (void)release
//{
//}

//- (instancetype)autorelease
//{
//    return self;
//}

//- (NSUInteger)retainCount
//{
//    return UINT_MAX;
//}

@end
