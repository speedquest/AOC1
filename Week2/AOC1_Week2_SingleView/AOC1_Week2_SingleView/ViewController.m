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
     
    //  Book Title - CENTER
    UILabel *bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, 320, 37)];
    
    if (bookTitle != nil) {
        bookTitle.backgroundColor = [UIColor whiteColor];
        bookTitle.textColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1]; /*#ff0000*/
        bookTitle.text = @"The Go-Getter";
        bookTitle.textAlignment = UITextAlignmentCenter;
    }
    [self.view addSubview:bookTitle];
    
    //  Author Label - RIGHT
    UILabel *authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, 80, 30)];
    
    if (authorLabel != nil) {
        authorLabel.backgroundColor = [UIColor colorWithRed:0.988 green:0.91 blue:0.922 alpha:1]; /*#fce8eb*/
        authorLabel.text = @"Author:";
        authorLabel.textColor = [UIColor blackColor]; /*#000000*/
        authorLabel.textAlignment = UITextAlignmentRight;
    }
    [self.view addSubview:authorLabel];

    //  Author Name - LEFT
    UILabel *authorName = [[UILabel alloc] initWithFrame:CGRectMake(90, 80, 240, 30)];
    
    if (authorName != nil) {
        authorName.backgroundColor = [UIColor colorWithRed:0.886 green:0.576 blue:0.067 alpha:1]; /*#e29311*/
        authorName.text = @"Peter B. Kyne";
        authorName.textColor = [UIColor colorWithRed:1 green:1 blue:0 alpha:1]; /*#ffff00*/   
        authorName.textAlignment = UITextAlignmentLeft;
    }
    [self.view addSubview:authorName];
  
    
    //  Published Label - RIGHT
    UILabel *publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 120, 80, 30)];
    
    if (publishedLabel != nil) {
        publishedLabel.backgroundColor = [UIColor colorWithRed:0.62 green:0.541 blue:0.373 alpha:1]; /*#9e8a5f*/
        publishedLabel.text = @"Published:";
        publishedLabel.textColor = [UIColor colorWithRed:0.169 green:0.447 blue:0.718 alpha:1]; /*#2b72b7*/
        publishedLabel.textAlignment = UITextAlignmentRight;
    }
    [self.view addSubview:publishedLabel];
    
    
    //  Published Date - LEFT
    UILabel *publishedDate = [[UILabel alloc] initWithFrame:CGRectMake(90, 120, 240, 30)];
    
    if (publishedDate != nil) {
        publishedDate.backgroundColor = [UIColor colorWithRed:0.804 green:0.322 blue:0.502 alpha:1]; /*#cd5280*/
        publishedDate.text = @"1921";
        publishedDate.textColor = [UIColor colorWithRed:0.988 green:0.937 blue:0.741 alpha:1]; /*#fcefbd*/
        publishedDate.textAlignment = UITextAlignmentLeft;
    }
    [self.view addSubview:publishedDate];

    
    //  Summary Label - LEFT
    UILabel *summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 160, 85, 30)];
    
    if (summaryLabel != nil) {
        summaryLabel.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1]; /*#0000ff*/
        summaryLabel.text = @"Summary:";
        summaryLabel.textColor = [UIColor colorWithRed:1 green:0.502 blue:0 alpha:1]; /*#ff8000*/
        summaryLabel.textAlignment = UITextAlignmentLeft;
    }
    [self.view addSubview:summaryLabel];
   
    
    //  Summary Box - CENTER
    UILabel *summaryBox = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, 320, 140)];
    
    if (summaryBox != nil) {
        summaryBox.backgroundColor = [UIColor colorWithRed:0.953 green:0.584 blue:0.584 alpha:1]; /*#f39595*/
        summaryBox.text = @"Keene's book is a tale of a returning World War I veteran who is willing to do whatever it takes to get the job done.  His boss is determined to make sure the new employee is a 'Go-Getter' and the plot reflects a timeless and ageless virtue.";
        summaryBox.numberOfLines = 6;
        summaryBox.textColor = [UIColor colorWithRed:0.094 green:0.682 blue:0.69 alpha:1]; /*#18aeb0*/
        summaryBox.textAlignment = UITextAlignmentCenter;
    }
    [self.view addSubview:summaryBox];
   
    
    //  List Label - LEFT
    UILabel *listLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 350, 100, 30)];
    
    if (listLabel != nil) {
        listLabel.backgroundColor = [UIColor colorWithRed:0.255 green:0.247 blue:0.231 alpha:1]; /*#413f3b*/
        listLabel.text = @"List of Items:";
        listLabel.textColor = [UIColor colorWithRed:0 green:1 blue:1 alpha:1]; /*#00ffff*/
        listLabel.textAlignment = UITextAlignmentLeft;
    }
    [self.view addSubview:listLabel];
   
    
    // Creating NSArray of Items
    NSArray *listItems =[[NSArray alloc] initWithObjects:@"Blue Vase", @"Lumber Mill", @"Skinner", @"skunk spruce", @"$2000", nil];
    
    // Creating Mutable NSArray for modification
    NSMutableString * listItemsString = [[NSMutableString alloc] initWithCapacity:5];
    
    int counter;
    int listSize = listItems.count;
    
    for (counter = 0; counter < listSize; counter++)
    {
        [listItemsString appendString: [listItems objectAtIndex: counter]];
        if (counter < listItems.count -1)
            [listItemsString appendString: @", "];
    }
    
    //  Displaying the NSMutableArray - CENTER
    UILabel *displayList = [[UILabel alloc] initWithFrame:CGRectMake(0, 390, 320, 50)];
    
    if (displayList != nil) {
        displayList.backgroundColor = [UIColor colorWithRed:0.753 green:0.878 blue:0.941 alpha:1]; /*#c0e0f0*/
        displayList.text = listItemsString;
        displayList.numberOfLines = 2;
        displayList.textColor = [UIColor colorWithRed:0.502 green:0 blue:0.502 alpha:1]; /*#800080*/
        displayList.textAlignment = UITextAlignmentCenter;
    }    
    [self.view addSubview:displayList];

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
