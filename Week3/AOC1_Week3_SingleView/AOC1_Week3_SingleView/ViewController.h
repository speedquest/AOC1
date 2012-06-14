//
//  ViewController.h
//  AOC1_Week3_SingleView
//
//  Created by Nicholas Weil on 6/11/12.
//  Copyright (c) 2012 SpeedQuest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
    //  Numbers
    int addNumbers; // Variable to contain the combined integers
    int numberOne;  // Variable for integer Number 1
    int numberTwo;  // Variable for integer Number 2
    NSNumber *total;
    
    //  Strings  
    NSString *string1;  // String declaration for String 1
    NSString *string2;  // String declaration for String 2
    
    NSString *totalMessage;  // Addition message
    NSString *totalValueString;
    NSString *addedNumbersString;  // The two numbers combined message
    NSString *compareYES;       //  Result if the two numbers are equal
    NSString *compareNO;        //  Result if the two numbers are NOT equal
    NSString *theNewString;
    NSString *compareValue;
    NSString *compareString;
    
}

- (int) add:(int)number1 with:(int)number2;
- (NSString*) append:(NSString*)str1 with:(NSString*)str2;
- (void) displayAlertWithString:(NSString*)stringAlert;
- (BOOL) compare:(int)number1 with:(int)number2;


@end
