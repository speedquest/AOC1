//
//  ViewController.m
//  AOC1_Week3_SingleView
//
//  Created by Nicholas Weil on 6/11/12.
//  Copyright (c) 2012 SpeedQuest. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    //  ADD Function
    
    //  COMPARE Function
    
    //  APPEND Function
    
    //  DisplayAlertWithStrings Function
    
    //  Calling the ADD function and passing in (2) integer values
    
    //  Capturing the return of the ADD function and placing it into a variable
    
    //  Bundling the returned integer into an NSNumber
    
    //  Convert the NSNumber to an NSString
    
    //  Pass the NSString to the DisplayAlertWithStrings function
    
    //  Title for the NSString to be published with
    
    //  Call the COMPARE Function and if TRUE, display UIAlertView
    
    //  Create a UIAlertView
    
    
    
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
