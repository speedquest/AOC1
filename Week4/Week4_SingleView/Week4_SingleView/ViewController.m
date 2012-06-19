//
//  ViewController.m
//  Week4_SingleView
//
//  Created by Nicholas Weil on 6/18/12.
//  Copyright (c) 2012 SpeedQuest. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil)
    {
        loginButton.frame = CGRectMake(190.0f, 70.0f, 100.0f, 30.0f);
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        [self.view addSubview:loginButton];
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{

    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
