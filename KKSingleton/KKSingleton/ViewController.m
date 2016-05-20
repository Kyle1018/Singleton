//
//  ViewController.m
//  KKSingleton
//
//  Created by Kyle on 16/5/18.
//  Copyright © 2016年 DiDi. All rights reserved.
//

#import "ViewController.h"
#import "KKSimpleSingleton.h"
#import "KKNormalSingleton.h"
#import "KKAbsoluteSingleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    KKSimpleSingleton *simpleSingleton = [KKSimpleSingleton singleton];
    KKSimpleSingleton *simpleObject = [KKSimpleSingleton new];
    
    NSLog(@"simpleSingleton: %@", simpleSingleton);
    NSLog(@"simpleObject: %@", simpleObject);
    
    KKNormalSingleton *normalSingleton = [KKNormalSingleton singleton];
    KKNormalSingleton *normalObject = [KKNormalSingleton new];
    
    NSLog(@"normalSingleton: %@", normalSingleton);
    NSLog(@"normalObject: %@", normalObject);
    
    KKAbsoluteSingleton *absoluteSingleton = [KKAbsoluteSingleton singleton];
    KKAbsoluteSingleton *absoluteObject = [KKAbsoluteSingleton new];
    
    NSLog(@"absoluteSingleton: %@", absoluteSingleton);
    NSLog(@"absoluteObject: %@", absoluteObject);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
