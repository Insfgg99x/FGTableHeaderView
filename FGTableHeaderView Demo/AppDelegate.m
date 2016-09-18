//
//  AppDelegate.m
//  FGTableHeaderView Demo
//
//  Created by 风过的夏 on 16/9/18.
//  Copyright © 2016年 风过的夏. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UINavigationController *navi=[[UINavigationController alloc] initWithRootViewController:[ViewController new]];
    navi.navigationBar.barStyle=UIBarStyleBlack;
    self.window.rootViewController=navi;
    [self.window makeKeyAndVisible];
    return YES;
}


@end
