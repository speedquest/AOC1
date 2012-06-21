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
    
    
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];  //  Establishing the button style
    if (loginButton != nil)  // Checking that the button exists
    {
        loginButton.frame = CGRectMake(190.0f, 70.0f, 100.0f, 30.0f);  //  Locating the button and sizing it
        loginButton.tintColor = [UIColor colorWithRed:0.451 green:0.635 blue:0.357 alpha:1]; /*#73a25b*/  //Changes the button color while depressed
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];  //  The NORMAL state of the button
        [loginButton setTitle:@"Logging In" forState:UIControlStateHighlighted];  // Changing button text while depressed
        loginButton.tag = 0;
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:loginButton];  //  Adding the button to the view
    }

    UIButton *dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil)
    {
        
        dateButton.frame = CGRectMake(10.0f, 170.0f, 100.0f, 40.0f);
        dateButton.tintColor = [UIColor redColor]; 
        [dateButton setTitle:@"Date" forState:UIControlStateNormal];
        dateButton.tag = 1;
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:dateButton];  //  Adding the button to the view
    }
    
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil)
    {
        
        //  infoButton.backgroundColor = [UIColor whiteColor];
        infoButton.frame = CGRectMake(10.0f, 350.0f, 25.0f, 25.0f);
        infoButton.tintColor = [UIColor colorWithRed:0.451 green:0.635 blue:0.357 alpha:1]; /*#73a25b*/
        infoButton.tag = 2;
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:infoButton];  //  Adding the button to the view
    }

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(void)onClick:(UIButton*)button
{
    if (button.tag == 0)
    {    
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"OUCH!" message:@"The LOGIN BUTTON works!" delegate:nil cancelButtonTitle:@"DONE" otherButtonTitles:nil];
    
        if (alertView != nil)
        {
            [alertView show];
        }
    }
    else if (button.tag == 1)
    {
        //  Creating the NSDate Object
        NSDate *date = [NSDate date];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        if (dateFormatter != nil)
        {
            [dateFormatter setDateFormat:@"MMMM dd', 'yyyy 'at' h:mm:ss a zzzz"];
        }
        NSString *currentDate = [dateFormatter stringFromDate:date];
        [self displayAlertWithString:currentDate];
    }
    else if (button.tag == 2)
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"OUCH!" message:@"The INFO BUTTON works!" delegate:nil cancelButtonTitle:@"DONE" otherButtonTitles:nil];
        
        if (alertView != nil)
        {
            [alertView show];
        }
    }
}


-(void)displayAlertWithString:(NSString *)stringAlert;
{

    UIAlertView *warning = [[UIAlertView alloc]
                          initWithTitle:@"DATE"
                          message:stringAlert
                          delegate:nil
                          cancelButtonTitle:@"Continue"
                          otherButtonTitles:nil];
    [warning show];
}


- (void)viewDidUnload
{

    [dateLabel release];
    dateLabel = nil;
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

- (void)dealloc {
    [dateLabel release];
    [super dealloc];
}
@end
