//
//  AppDelegate.h
//  Pickcel
//
//  Created by Leonardo on 09-12-12.
//  Copyright (c) 2012 Reframe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Accounts/Accounts.h>
#import <FacebookSDK/FacebookSDK.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

extern NSString *const FBSessionStateChangedNotification;

@property (strong, nonatomic) UIWindow *window;

- (BOOL)openSessionWithAllowLoginUI:(BOOL)allowLoginUI;
- (void) closeSession;

@end
