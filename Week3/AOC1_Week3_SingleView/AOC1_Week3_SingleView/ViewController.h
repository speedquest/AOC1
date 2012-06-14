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
    
    NSString *addingMessage;  // Addition message
    NSString *combinedString;
    NSString *alertString;    
}

- (int) add:(int)number1 with:(int)number2;
- (NSString*) append:(NSString*)str1 with:(NSString*)str2;
- (void) displayAlertWithString:(NSString*)StringIN;

@end
