//
//  ViewController2.m
//  test06
//
//  Created by guoshan on 15/12/14.
//  Copyright © 2015年 guoshan. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController.h"
#import "Util.h"
#import "LMLSimpleProgressView.h"

#define LMLSystemAlertControllerShowSingelButtonWithMessageAndPopToSpecificControllerFromController(messageStr, buttonStr,toController, fromController) UIAlertController *alert_c = [UIAlertController alertControllerWithTitle:@"温馨提示" message:(messageStr) preferredStyle:UIAlertControllerStyleAlert];[alert_c addAction:[UIAlertAction actionWithTitle:(buttonStr) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {[self.presentingViewController dismissViewControllerAnimated:YES completion:nil];for (UIViewController *controller in self.navigationController.viewControllers) {if([controller isKindOfClass:toController.class]) {[self.navigationController popToViewController:controller animated:YES];}}}]];[self presentViewController:alert_c animated:YES completion:nil]

@interface ViewController2 (){
    
    LMLSimpleProgressView *view;
    
}



@end

@implementation ViewController2
- (IBAction)pop:(id)sender {
    //LMLSystemAlertControllerShowSingelButtonWithMessageAndPopToSpecificControllerFromController(@"xx", @"确定", self, self);
    
//    UIAlertController *alert_c =  [UIAlertController alertControllerWithTitle:@"温馨提示" message:(@"1") preferredStyle:UIAlertControllerStyleAlert];
//    [alert_c addAction:[UIAlertAction actionWithTitle:(@"22") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
//        for (UIViewController *controller in self.navigationController.viewControllers) {
//            if([controller isKindOfClass:self.class]) {
//                [self.navigationController popToViewController:controller animated:YES];
//            }
//        }
//
//    }]];
//    [self presentViewController:alert_c animated:YES completion:nil];
    LMLSystemAlertControllerShowSingelButtonWithMessageAndPopToSpecificControllerFromController(@"好的", @"确定", [[ViewController alloc] init], self);
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    view = [[LMLSimpleProgressView alloc] initWithFrame:CGRectMake(100, 100, 200, 2)];
    view.progress = 0.5;
    view.progressColor = [UIColor redColor];
    view.isCornerRadius = YES;
    //view.isCornerRadius = NO;
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
    
    
}
- (IBAction)iii:(id)sender {
    
    view.progress += 0.1;
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
