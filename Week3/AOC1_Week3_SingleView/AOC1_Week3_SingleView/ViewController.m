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
    numberOne = 312;
    numberTwo = 27;
    addNumbers = [self add:numberOne with:numberTwo];  //  Calling the ADD function and passing in (2) integer values  REQUIREMENT #6
    
    total = [[NSNumber alloc] initWithInt:addNumbers]; //  Capturing the return of the ADD function and placing it into a NSNUmber variable  REQUIREMENT #7A
    totalMessage = [NSString stringWithFormat:@"When %d and %d are added it equals: ", numberOne, numberTwo];  //  REQUIREMENT #7B
    totalValueString = [total stringValue];      //  Convert the NSNumber to an NSString REQUIREMENT #7B
    addedNumbersString = [self append:totalMessage with:totalValueString];  //Calling the Append Function for the numbers converted to a string
    
    //  Appending the strings
    string1 = @"If we append String 1, ";
    string2 = @"with String 2 we get this message. ";
    theNewString = [self append:string1 with:string2];  //  Calling the Append function for the strings  REQUIREMENT #4 AND REQUIREMENT #10 or #1 in DisplayAlertWithString
    
    [self displayAlertWithString:addedNumbersString];  //  Displaying the result of the numbers added together
    [self displayAlertWithString:theNewString];  //  Displaying the result of string1 and string2 added together
    
    //  Comparing the numbers!
    BOOL BOOLSame = [self compare:numberOne with:numberTwo];  //  Calling the Compare Function REQUIREMENT #9A
    
    NSString *checkSame = [NSString stringWithFormat:@"Is %d the same as %d ? %@", numberOne, numberTwo, BOOLSame?@"YES":@"NO"];  // REQUIREMENT #9B
    [self displayAlertWithString:checkSame];  //REQUIREMENT #9C
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


//  Addition Function  REQUIREMENT #1
- (int)add:(int)number1 with:(int)number2{
    return number1 + number2;
}


// Append Function  REQUIREMENT #3
-(NSString *)append:(NSString*)str1 with:(NSString*)str2{
    NSMutableString *appendedString = [NSMutableString stringWithString:str1];
    NSString *string = [appendedString stringByAppendingString:str2];
    return string;
    
}

// Display the Alert Function REQUIREMENT #5
-(void)displayAlertWithString:(NSString *)stringAlert{
    UIAlertView *alert = [[UIAlertView alloc]   //  Creating a UIAlertView REQUIREMENT #11 or #2 in DisplayAlertWithString
                          initWithTitle:@"Alert"
                          message:stringAlert
                          delegate:nil
                          cancelButtonTitle:@"Continue!"
                          otherButtonTitles:nil];
    [alert show];
}

// Compare Function  REQUIREMENT #2
-(BOOL)compare:(int)number1 with:(int)number2{
    
    compareYES = [NSString stringWithFormat:@"Are the numbers %d and %d the same? YES", numberOne, numberTwo ];
    compareNO = [NSString stringWithFormat:@"Are the numbers %d and %d the same? NO", numberOne, numberTwo ];
    
    if (number1 == number2) {
        return YES;
    }else{
        return NO;
    }
}


-(void)viewDidAppear:(BOOL)animated
{

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
