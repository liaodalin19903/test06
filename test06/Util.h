//
//  Util.h
//  test06
//
//  Created by guoshan on 15/12/14.
//  Copyright © 2015年 guoshan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Util : NSObject

// add by 廖马儿
+ (void)popToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController;


//#define LMLSystemAlertControllerShowSingelButtonWithMessageAndPopToSpecificControllerFromControlle(messageStr, buttonStr,toController, fromController)UIAlertController *alert_c =[UIAlertController alertControllerWithTitle:@"温馨提示" message:(messageStr)preferredStyleUIAlertControllerStyleAlert];alert_c addAction:[UIAlertAction actionWithTitle:(buttonStr) style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action) {[self.presentingViewController dismissViewControllerAnimated:YES completion:nil];[Util popToViewController:toViewController fromViewController fromViewController];[self presentViewController:alert_c animated:YES completion:nil];



@end
