//
//  ViewController.m
//  Week4_SingleView
//
//  Created by Nicholas Weil on 6/18/12.
//  Copyright (c) 2012 SpeedQuest. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

#define LOGIN_BUTTON 0
#define DATE_BUTTON 1
#define INFO_BUTTON 2

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *usernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 90.0f, 30.0f)];
     
    if (usernameLabel != nil)
    {
        usernameLabel.text = @"Username:";
    }
    [self.view addSubview:usernameLabel];
    
    usernameText = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 10.0f, 200.0f, 30.0f)];
    if (usernameText != nil)
    {
        usernameText.borderStyle = UITextBorderStyleRoundedRect;  //  Put a border around the textfield
        [self.view addSubview:usernameText];  //  Display the textfield on the mainView
    }
    
    //  Creating the Username Prompt
    namePrompt = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 90.0f, 300.0f, 40.0f)];  //  Create prompt and its size/shape
    
    if (namePrompt != nil)  //  If variable actually display then...
    {
        namePrompt.text = @"Please Enter Your Username";  //  Supply the variable with the text to be shown
        namePrompt.backgroundColor = [UIColor colorWithRed:0.82 green:0.82 blue:0.82 alpha:1]; /*#d1d1d1*/
        namePrompt.textAlignment = UITextAlignmentCenter;  // Center the text within the background
    }
    [self.view addSubview:namePrompt];  //  Display the view on top of the mainView
    
    
    //  Create the Login Button and display it
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];  //  Establishing the button style
    if (loginButton != nil)  // Checking that the button exists
    {
        loginButton.frame = CGRectMake(190.0f, 50.0f, 100.0f, 30.0f);  //  Locating the button and sizing it
        loginButton.tintColor = [UIColor colorWithRed:0.451 green:0.635 blue:0.357 alpha:1]; /*#73a25b*/  //Changes the button color while depressed
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];  //  The NORMAL state of the button
        [loginButton setTitle:@"Logging In" forState:UIControlStateHighlighted];  // Changing button text while depressed
        loginButton.tag = 0;  //  Assign this button to a value of 0 to enable different onClick event result
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:loginButton];  //  Adding the button to the view
    }

    //  Create the Date Button and display it
    UIButton *dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil)
    {
        dateButton.frame = CGRectMake(10.0f, 170.0f, 100.0f, 40.0f);
        dateButton.tintColor = [UIColor redColor]; 
        [dateButton setTitle:@"Date" forState:UIControlStateNormal];  // NORMAL state
        dateButton.tag = 1;  //  Assign this button to a value of 1 to enable different onClick event results
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:dateButton];  //  Adding the button to the view
    }
    
    //  Create the info button(dark) and display it
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil)
    {
        infoButton.frame = CGRectMake(10.0f, 300.0f, 25.0f, 25.0f);
        infoButton.tintColor = [UIColor colorWithRed:0.451 green:0.635 blue:0.357 alpha:1]; /*#73a25b*/
        infoButton.tag = 2;  //  Assign this button to a value of 2 to enable different onClick event result
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:infoButton];  //  Adding the button to the view
    }
    
    //  Adding the Author 'BLANK' Label area
    authorInfo = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 330.0f, 300.0f, 50.0f)];
    if (authorInfo != nil)
    {
        authorInfo.textAlignment = UITextAlignmentCenter;  // Center it
    }
    [self.view addSubview:authorInfo];

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


//  onClick Function - When the buttons are clicked, determine which one, then perform an action
-(void)onClick:(UIButton*)button
{
    if (button.tag == LOGIN_BUTTON)  //  If button pressed is Login Button then do this...
    {
        if (usernameText.text.length >= 1)  //  If there is data in the textfield then do this...
        {
            NSString *userInput =[[NSString alloc] initWithString:usernameText.text];  //  Assign the text in the textField to the userInput variable
            
            namePrompt.text = [NSString stringWithFormat:@"Username: '%@' has been logged in", userInput];
            namePrompt.textColor = [UIColor whiteColor]; 
            namePrompt.backgroundColor = [UIColor colorWithRed:0.451 green:0.635 blue:0.357 alpha:1]; /*#73a25b*/
            namePrompt.numberOfLines = 3;
            [usernameText resignFirstResponder];  //  Shift focus away from the text field to get rid of keyboard
            
        }else {  //  If the Username slot is empty, change the color and the text of the prompt to alert user
            namePrompt.text =@"Username cannot be empty";
            namePrompt.textColor = [UIColor whiteColor];  //  Make the text white
            namePrompt.backgroundColor = [UIColor redColor];  //  Make the background red
            [usernameText resignFirstResponder];  //  Shift focus away from the text field to get rid of keyboard

        }
        
    }else if (button.tag == DATE_BUTTON)  //  If button pressed is Date Button then do this...
        {
        //  Creating the NSDate Object
        NSDate *date = [NSDate date];  //  Declares the variable
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];  //  Formats the variable
        if (dateFormatter != nil)  //  If the variable exists, then do this...
        {
            [dateFormatter setDateFormat:@"MMMM dd', 'yyyy 'at' h:mm:ss a zzzz"];  //  Sets the format specifically
        }
        NSString *currentDate = [dateFormatter stringFromDate:date];  //  Make currentDate = newly formatted date variable
        [self displayAlertWithString:currentDate];  // Display the Alert using the currentDate variable info
    
    //  INFO Button functionality        
    }else if (button.tag == INFO_BUTTON)  //  Info Button then do this...
        {
            authorInfo.text = @"This application was created by: Nick Weil";
            authorInfo.textColor = [UIColor blueColor];
            authorInfo.backgroundColor = [UIColor colorWithRed:0.82 green:0.82 blue:0.82 alpha:1]; /*#d1d1d1*/
            authorInfo.numberOfLines = 2;  // Put the text on 2 lines since it is too long
            authorInfo.textAlignment = UITextAlignmentCenter;  //  Center text
        }
}

//  UIAlert Creation for the DATE Alert
-(void)displayAlertWithString:(NSString *)stringAlert;
{

    UIAlertView *warning = [[UIAlertView alloc]
                          initWithTitle:@"DATE"
                          message:stringAlert
                          delegate:nil
                          cancelButtonTitle:@"Continue"
                          otherButtonTitles:nil];
    [warning show];  //  Show the Date Alert!
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
