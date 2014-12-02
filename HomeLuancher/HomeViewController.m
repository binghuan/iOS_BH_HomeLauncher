//
//  HomeViewController.m
//  HomeLuancher
//
//  Created by Lin BH on 3/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad
{

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"viewDidLoad");
    
    //return;
    
    UILocalNotification *localNotif = [[UILocalNotification alloc] init];
    if (localNotif == nil) return;
    NSDate *fireTime = [[NSDate date] addTimeInterval:1]; // adds 2 secs
    localNotif.fireDate = fireTime;
    localNotif.alertBody = @"Press me to the Home screen";

    [[UIApplication sharedApplication] scheduleLocalNotification:localNotif];
    
    exit(0);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    NSLog(@"viewDidUnload");

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (IBAction)returnToHomeScreen:(id)sender {
    NSLog(@"retur to Home Screen");

    UILocalNotification *localNotif = [[UILocalNotification alloc] init];
    if (localNotif == nil) return;
    NSDate *fireTime = [[NSDate date] addTimeInterval:2]; // adds 2 secs
    localNotif.fireDate = fireTime;
    localNotif.alertBody = @"Alert!";
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotif];

    exit(0);
}


@end
