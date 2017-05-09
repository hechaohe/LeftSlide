//
//  AAViewController.m
//  test_LeftSlide
//
//  Created by hc on 2017/4/17.
//  Copyright © 2017年 hc. All rights reserved.
//

#import "AAViewController.h"

#import "AppDelegate.h"

@interface AAViewController ()

@end

@implementation AAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Open" style:UIBarButtonItemStyleDone target:self action:@selector(openSlideMenue)];
    
    
}

- (void)openSlideMenue {
    
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    if (tempAppDelegate.leftSlideVC.closed) {
        [tempAppDelegate.leftSlideVC openLeftView];
    } else {
        [tempAppDelegate.leftSlideVC closeLeftView];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
