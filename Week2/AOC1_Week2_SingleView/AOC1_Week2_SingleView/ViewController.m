//
//  ViewController.m
//  AOC1_Week2_SingleView
//
//  Created by Nicholas Weil on 6/6/12.
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

-(void)viewWillAppear:(BOOL)animated
{
    UILabel *bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 150, 37)];
    
    if (bookTitle != nil) {
        bookTitle.text = @"The Go-Getter";
    }
    [self.view addSubview:bookTitle];
                          
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
