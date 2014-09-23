//
//  AppDelegate.h
//  TestGame
//
//  Created by Bijit Halder on 9/22/14.
//  Copyright (c) 2014 Bijit Halder. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>{

    MainViewController    *mainViewController;
}

@property (strong, nonatomic) UIWindow *window;

@end
