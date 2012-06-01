//
//  AppDelegate.m
//  AOC1
//
//  Created by Nicholas Weil on 5/31/12.
//  Copyright (c) 2012 SpeedQuest. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // Declaring int variables
    int x = 0;
    int y = 1;
    int loop = 0;
    int smokerRooms = 0;
    int nonSmokerRooms = 0;
    int smokerCount = 0;
    
    // Declaring float variables
    float roomRate = 79.99f;
    float roomTax= 15.75f;
    float smokerFee = 20.00f;
    float dailySales = 0.0f;
    float weeklySales = 0.0f;
    float monthlySales = 0.0f;
    float monthlyGoal = 70000.00f;
    
    // Declaring BOOLEAN variable
    bool metGoal = FALSE;
    
    NSLog(@"Our daily room rate is: $%f", roomRate);
    
    // Casting the float variables to integers
    int approxSales = (int)(roomRate + roomTax);
    
    // WHILE LOOP
    while (y <= 4) {
        NSLog(@"This is WEEK #%d", y);
    
        // FOR LOOP
        for(x=1; x<=7; x = x+1) {
            // Random Number Generation
            int totalRoomsNeeded = arc4random() % 20 +1;
            NSLog(@"Scanning day %i", x);
            NSLog(@"Room rented this evening are: %d", totalRoomsNeeded);
                // NESTED FOR LOOP
                for(loop = 1; loop <= totalRoomsNeeded; loop++){
                    // More Random Number Generation
                    int smokerVariable = arc4random() % 100 +1;
                    // RESETTING THE ROOM RATE FOR THE LOOP IN CASE THEY AREN'T SMOKERS
                    roomRate = 79.99;
                    // NESTED IF/ELSE STATEMENT
                    if (smokerVariable <=50) {
                        smokerRooms = smokerRooms + 1;
                        // INCREMENTING SMOKER COUNT FOR MONTHLY GOAL TRACKING
                        smokerCount = smokerCount +1;
                        // ADDING THE SMOKER ROOM RATE
                        roomRate = roomRate + smokerFee;
                    }
                    else {
                        nonSmokerRooms = nonSmokerRooms +1;
                    }
                }
            dailySales = (roomRate + roomTax) * totalRoomsNeeded;
            NSLog(@"Our total sales today = $%f", dailySales);
            NSLog(@"We needed smoking rooms for %d", smokerRooms);
            // RESETTING THE SMOKER VARIABLE FOR DAILY TABULATION
            smokerRooms = 0;    
            // INCREMENTING THE WEEKLY SALES WITHIN THE LOOP
            weeklySales = weeklySales + dailySales;
            NSLog(@"Our weekly sales thus far are $%f", weeklySales);
        }
        
        // OUTPUTTING THE FLOAT CONVERTED TO INTEGER
        NSLog(@"Our approximate nightly room rate is: $%i", approxSales);
        NSLog(@"Our ACTUAL TOTAL weekly sales were: $%f", weeklySales);
        monthlySales = monthlySales + weeklySales;
        NSLog(@"Our Monthly sales so far are: $%f", monthlySales);
        // INCREMENTING THE WEEK COUNTER
        y = y + 1;  
    }
              NSLog(@"Our total sales for the month were: $%f", monthlySales);
    
    // BOOLEAN CONDITION AND IF/ELSE STATEMENT
    if ((monthlySales >= monthlyGoal) && (smokerCount >= 50)) {
        metGoal = true;
        NSLog(@"Congratulations, the hotel met it's goals!");
    }
    else {
        metGoal = false;
        NSLog(@"We didn't meet our goals this month.  Try harder next month!");
    }
    
    
    return YES;
    
    
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
