//
//  LMLSimpleProgressView.h
//  test06
//
//  Created by guoshan on 15/12/15.
//  Copyright © 2015年 guoshan. All rights reserved.
// 新浪微博：@廖马儿

/*
    自定义的ProgressView，我们可以指定进度，前景色，背景色，和宽高，还有是否是圆角
 */

#import <UIKit/UIKit.h>

@interface LMLSimpleProgressView : UIView

@property (nonatomic, assign) CGFloat progress;  // 进度参数取值范围(0-1)
@property (nonatomic, strong) UIColor *progressColor;  // progress的颜色，默认是蓝色（blue）
@property (nonatomic, strong) UIColor *progressBackColor; // progressView的背景颜色，默认是浅灰（lightGray）
@property (nonatomic, assign) BOOL isCornerRadius;  // 属性：是否是圆角 缺省是NO

- (instancetype)initWithFrame:(CGRect)frame andIsCornerRadius:(BOOL)isCornerRadius;

@end
