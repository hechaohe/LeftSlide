//
//  BaseTabBarController.m
//  test_LeftSlide
//
//  Created by hc on 2017/4/17.
//  Copyright © 2017年 hc. All rights reserved.
//

#import "BaseTabBarController.h"
#import "AAViewController.h"
#import "BBViewController.h"
#import "CCViewController.h"
#import "BaseNavController.h"

@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self createSubControllers];
}

- (void)createSubControllers {
    
    //修改字体大小和颜色
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:11],
                                                      NSFontAttributeName,
                                                      [UIColor colorWithRed:44/255.0 green:185/255.0 blue:176/255.0 alpha:1],
                                                      NSForegroundColorAttributeName,nil] forState:UIControlStateNormal];
    
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:11],
                                                      NSFontAttributeName,
                                                      [UIColor colorWithRed:44/255.0 green:185/255.0 blue:176/255.0 alpha:1],
                                                      NSForegroundColorAttributeName,nil] forState:UIControlStateSelected];
    
    
    AAViewController *aController = [[AAViewController alloc] init];
    aController.title = @"shouye";
    aController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"shouye" image:nil selectedImage:nil];
    
    BBViewController *bController = [[BBViewController alloc] init];
    bController.title = @"bb";
    bController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"bb" image:nil selectedImage:nil];
    
    CCViewController *cController = [[CCViewController alloc] init];
    cController.title = @"wo";
    cController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"wo" image:nil selectedImage:nil];
    
    
    NSArray *viewControllers = @[aController,bController,cController];
    NSMutableArray *navs = [NSMutableArray arrayWithCapacity:viewControllers.count];
    
    for (UIViewController *ctrl in viewControllers) {
        BaseNavController *nav = [[BaseNavController alloc] initWithRootViewController:ctrl];
        
        [navs addObject:nav];
    }
    
    self.viewControllers = navs;
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
