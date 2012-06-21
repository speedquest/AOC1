//
//  ViewController.h
//  Week4_SingleView
//
//  Created by Nicholas Weil on 6/18/12.
//  Copyright (c) 2012 SpeedQuest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


{
    UITextField *usernameText;
    UILabel *namePrompt;
    UILabel *dateLabel;
    UILabel *authorInfo;

}

- (void)displayAlertWithString:(NSString*)stringAlert;


@end
