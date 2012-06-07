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
    //  Changing BackGround Color
    self.view.backgroundColor = [UIColor colorWithRed:0.427 green:0.647 blue:0.169 alpha:1]; /*#6da52b*/
     
    //  Book Title
    UILabel *bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, 320, 37)];
    
    if (bookTitle != nil) {
        bookTitle.backgroundColor = [UIColor colorWithRed:0.988 green:0.937 blue:0.741 alpha:1]; /*#fcefbd*/
        bookTitle.textColor = [UIColor whiteColor];
        bookTitle.text = @"The Go-Getter";
        bookTitle.textAlignment = UITextAlignmentCenter;
    }
    [self.view addSubview:bookTitle];
    
    //  Author Label
    UILabel *authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, 80, 30)];
    
    if (authorLabel != nil) {
        authorLabel.backgroundColor = [UIColor whiteColor]; /*#FFFFFF*/
        authorLabel.text = @"Author:";
        authorLabel.textColor = [UIColor blackColor]; /*#000000*/
        authorLabel.textAlignment = UITextAlignmentRight;
    }
    [self.view addSubview:authorLabel];

    //  Author Name
    UILabel *authorName = [[UILabel alloc] initWithFrame:CGRectMake(90, 80, 240, 30)];
    
    if (authorName != nil) {
        authorName.backgroundColor = [UIColor whiteColor]; /*#FFFFFF*/
        authorName.text = @"Peter B. Kyne";
        authorName.textColor = [UIColor blackColor]; /*#000000*/
        authorName.textAlignment = UITextAlignmentLeft;
    }
    [self.view addSubview:authorName];
        
    //  Published Label
    UILabel *publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 120, 80, 30)];
    
    if (publishedLabel != nil) {
        publishedLabel.backgroundColor = [UIColor whiteColor]; /*#FFFFFF*/
        publishedLabel.text = @"Published:";
        publishedLabel.textColor = [UIColor blackColor]; /*#000000*/
        publishedLabel.textAlignment = UITextAlignmentRight;
    }
    [self.view addSubview:publishedLabel];
    
    //  Published Date
    UILabel *publishedDate = [[UILabel alloc] initWithFrame:CGRectMake(90, 120, 240, 30)];
    
    if (publishedDate != nil) {
        publishedDate.backgroundColor = [UIColor whiteColor]; /*#FFFFFF*/
        publishedDate.text = @"1921";
        publishedDate.textColor = [UIColor blackColor]; /*#000000*/
        publishedDate.textAlignment = UITextAlignmentLeft;
    }
    [self.view addSubview:publishedDate];

    //  Summary Label
    UILabel *summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 160, 85, 30)];
    
    if (summaryLabel != nil) {
        summaryLabel.backgroundColor = [UIColor whiteColor]; /*#FFFFFF*/
        summaryLabel.text = @"Summary:";
        summaryLabel.textColor = [UIColor blackColor]; /*#000000*/
        summaryLabel.textAlignment = UITextAlignmentLeft;
    }
    [self.view addSubview:summaryLabel];
    
    //  Summary Box
    UILabel *summaryBox = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, 320, 140)];
    
    if (summaryBox != nil) {
        summaryBox.backgroundColor = [UIColor whiteColor]; /*#FFFFFF*/
        summaryBox.text = @"Keene's book is a tale of a returning World War I veteran who is willing to do whatever it takes to get the job done.  His boss is determined to make sure the new employee is a 'Go-Getter' and the plot reflects a timeless and ageless virtue.";
        summaryBox.numberOfLines = 6;
        summaryBox.textColor = [UIColor blackColor]; /*#000000*/
        summaryBox.textAlignment = UITextAlignmentCenter;
    }
    [self.view addSubview:summaryBox];
    
    //  List Label
    UILabel *listLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 350, 100, 30)];
    
    if (listLabel != nil) {
        listLabel.backgroundColor = [UIColor whiteColor]; /*#FFFFFF*/
        listLabel.text = @"List of Items:";
        listLabel.textColor = [UIColor blackColor]; /*#000000*/
        listLabel.textAlignment = UITextAlignmentCenter;
    }
    [self.view addSubview:listLabel];
    
    // Creating NSArray of Items
    NSArray *listItems =[[NSArray alloc] initWithObjects:@"Blue Vase", @"Lumber Mill", @"Skinner", @"skunk spruce", @"$2000", nil];
    // Creating Mutable NSArray for modification
    NSMutableString * listItemsString = [[NSMutableString alloc] init];
    
    int counter;
    int listSize = listItems.count;
    
    for (counter = 0; counter < listSize; counter++)
    {
        //  START HERE!!!
    }
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
