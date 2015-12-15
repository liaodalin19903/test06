//
//  ViewController.m
//  test06
//
//  Created by guoshan on 15/12/12.
//  Copyright © 2015年 guoshan. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initdata];
    
    [self addProgressBar];
    
}
- (IBAction)pushto:(id)sender {
    
    [self performSegueWithIdentifier:@"VCToVC2" sender:self];
}

- (void)nn:(Class)vc {

    NSLog(@"__%@", [vc class]);
}

- (void)initdata {

    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
    NSLog(@"%@", path);
    
    [data writeToFile:[NSString stringWithFormat:@"%@/x.html", path] atomically:NO];
}

#pragma mark - private methods

- (void)addProgressBar{

    UIProgressView *p = [[UIProgressView alloc] initWithFrame:CGRectMake(20, 200, 300, 20)];
    p.progressViewStyle= UIProgressViewStyleDefault;
    p.progress = 0.5;
    p.progressTintColor = [UIColor redColor];
    
    [self.view addSubview:p];
    
}


@end
