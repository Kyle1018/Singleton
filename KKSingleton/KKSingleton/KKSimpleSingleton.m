//
//  KKSimpleSingleton.m
//  KKSingleton
//
//  Created by Kyle on 16/5/18.
//  Copyright © 2016年 DiDi. All rights reserved.
//

#import "KKSimpleSingleton.h"

static KKSimpleSingleton *sharedInstance = nil;

@implementation KKSimpleSingleton

+ (instancetype)singleton
{
    @synchronized(self) {
        if (!sharedInstance) {
            sharedInstance = [KKSimpleSingleton new];
        }
        return sharedInstance;
    }
    return nil;
}

@end
