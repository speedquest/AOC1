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
    
//  Numbers & Addition    
    numberOne = 10;
    numberTwo = 27;
    addNumbers = [self add:numberOne with:numberTwo];  //  Calling the ADD function and passing in (2) integer values
    
    total = [[NSNumber alloc] initWithInt:addNumbers];
    addingMessage = [NSString stringWithFormat:@"When added: %d and %d equals ", numberOne, numberTwo];
    combinedString = [total stringValue];
    alertString = [self append:addingMessage with:combinedString];  //Calling the Append Function to create the appended message
    [self displayAlertWithString:alertString];
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


//  Addition Function
- (int)add:(int)number1 with:(int)number2{
    return number1 + number2;
}


// Append Function
-(NSString *)append:(NSString*)str1 with:(NSString*)str2{
    NSMutableString *appendedString = [NSMutableString stringWithString:str1];
    NSString *string = [appendedString stringByAppendingString:str2];
    return string;
}

-(void)viewDidAppear:(BOOL)animated
{
    
    
    //  DisplayAlertWithStrings Function
    
    
    
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
