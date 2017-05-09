//
//  AppDelegate.h
//  test_LeftSlide
//
//  Created by hc on 2017/4/15.
//  Copyright © 2017年 hc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeftSlideViewController.h"
#import "BaseTabBarController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@property (strong,nonatomic) LeftSlideViewController *leftSlideVC;
@property (nonatomic,strong) BaseTabBarController *mainTabBaeController;

@end

