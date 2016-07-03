//
//  LGBViewController.m
//  LGBUIViewController
//
//  Created by lgb789 on 07/03/2016.
//  Copyright (c) 2016 lgb789. All rights reserved.
//

#import "LGBViewController.h"
#import "UIViewController+lgb_navigation.h"

@interface LGBViewController ()

@end

@implementation LGBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self lgb_setNavigationTitle:@"title" color:[UIColor redColor] font:[UIFont boldSystemFontOfSize:18.0f]];
    
    [self lgb_setNavigationBackButtonWithImage:[UIImage imageNamed:@"item_cancel_selected"] highlightedImage:nil action:^{
        NSLog(@"handle back");
        [self.navigationController popViewControllerAnimated:YES];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
