//
//  WYImageView.h
//  DrawViewTest
//
//  Created by richard on 16/4/19.
//  Copyright © 2016年 ztesoft. All rights reserved.
//  自定义实现UIImageView

#import <UIKit/UIKit.h>

@interface WYImageView : UIView

@property (nullable,nonatomic, strong) UIImage *image;

-(nullable instancetype)initWithImage:(nullable UIImage*)image;

@end
