//
//  HomeAppDelegate.m
//  HomeLuancher
//
//  Created by Lin BH on 3/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HomeAppDelegate.h"

@implementation HomeAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"didFinishLaunchingWithOptions");
    // Override point for customization after application launch.
    
    /* Register the app for the Push- and Local-Notifications on iOS5 - 
                else the users will not get the Local-Notifications
     */
    //
    [[UIApplication sharedApplication]registerForRemoteNotificationTypes: 
     UIRemoteNotificationTypeBadge | 
//     UIRemoteNotificationTypeAlert |
     UIRemoteNotificationTypeSound];

    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"applicationWillResignActive");
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    NSLog(@"applicationDidEnterBackground");
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    
    
    NSLog(@"applicationWillEnterForeground");
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
        NSLog(@"applicationDidBecomeActive");
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    NSLog(@"applicationWillTerminate");
    
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void) application:(UIApplication *)application didReceiveLocalNotification:    (UILocalNotification *)notification {
    //Place your code to handle the notification here.
    NSLog(@"didReceiveLocalNotification");
}

@end
