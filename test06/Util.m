//
//  Util.m
//  test06
//
//  Created by guoshan on 15/12/14.
//  Copyright © 2015年 guoshan. All rights reserved.
//

#import "Util.h"

@implementation Util

// add by 廖马儿

+ (void)popToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController{
    
    for (UIViewController *controller in fromViewController.navigationController.viewControllers) {
        
        if ([controller isKindOfClass:toViewController.class]) {
            
            [fromViewController.navigationController popToViewController:controller animated:YES];
        }
    }
}

@end
