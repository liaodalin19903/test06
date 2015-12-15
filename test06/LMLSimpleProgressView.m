//
//  LMLSimpleProgressView.m
//  test06
//
//  Created by guoshan on 15/12/15.
//  Copyright © 2015年 guoshan. All rights reserved.
//

#import "LMLSimpleProgressView.h"

@interface LMLSimpleProgressView ()

@property (nonatomic, strong) CALayer *progressLayer;

@end

@implementation LMLSimpleProgressView

- (instancetype)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];
    if (self) {
        
        self.frame= frame;
    
        self.layer.backgroundColor = [UIColor lightGrayColor].CGColor;
        self.progressLayer.frame = CGRectMake(frame.origin.x, frame.origin.y, 0, frame.size.height);
        [self.layer addSublayer:self.progressLayer];
        self.progressLayer.backgroundColor = [UIColor blueColor].CGColor;

    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame andIsCornerRadius:(BOOL)isCornerRadius {

    LMLSimpleProgressView *sim = [self initWithFrame:frame];
    // 设置圆角
    sim.layer.cornerRadius = self.bounds.size.height / 2.0;
    sim.layer.masksToBounds = YES;
    sim.progressLayer.cornerRadius = self.bounds.size.height / 2.0;
    sim.progressLayer.masksToBounds = YES;
    return sim;
}

#pragma mark - setter and getter

- (void)setIsCornerRadius:(BOOL)isCornerRadius {

    _isCornerRadius = isCornerRadius;
    if (isCornerRadius == YES) {
        
        // 设置圆角
        self.layer.cornerRadius = self.bounds.size.height / 2.0;
        self.layer.masksToBounds = YES;
        self.progressLayer.cornerRadius = self.bounds.size.height / 2.0;
        self.progressLayer.masksToBounds = YES;
    }else {
        
        // 不设置圆角
        self.layer.cornerRadius = 0;
        self.layer.masksToBounds = NO;
        self.progressLayer.cornerRadius = 0;
        self.progressLayer.masksToBounds = NO;
    }
    
}

- (void)setProgressColor:(UIColor *)progressColor {
    
    _progressColor = progressColor;
    self.progressLayer.backgroundColor = progressColor.CGColor;
}

- (void)setProgressBackColor:(UIColor *)progressBackColor {
    
    _progressBackColor = progressBackColor;
    self.layer.backgroundColor = progressBackColor.CGColor;
}

- (CALayer *)progressLayer {

    if (!_progressLayer) {
        
        _progressLayer = [[CALayer alloc] init];
    }
    return _progressLayer;
}

- (void)setProgress:(CGFloat)progress {

    if (progress > 1) {
        
        _progress = 1.0;
    }else if (progress < 0){
        _progress = 0.0;
    }else{
        
        _progress = progress;
    }
    /* 设置progressLayer的动画 */
    [UIView animateWithDuration:0.5 animations:^{
        
        CGRect rect = CGRectMake(0, 0, _progress * self.layer.bounds.size.width, self.progressLayer.bounds.size.height);
        self.progressLayer.bounds = rect;
        self.progressLayer.position = CGPointMake(0.f, 0.f);
        self.progressLayer.anchorPoint = CGPointMake(0, 0);
    } completion:^(BOOL finished) {
        
    }];
}

@end
