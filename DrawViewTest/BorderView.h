//
//  BorderView.h
//  DrawViewTest
//
//  Created by richard on 16/4/19.
//  Copyright © 2016年 ztesoft. All rights reserved.
//  添加边框

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,BorderType) {
    BORDER_TYPE_DOTTED = 1,
    BORDER_TYPE_NORMAL
};

@interface BorderView : UIView

@property (nonatomic,assign) BorderType borderType;
@property (nonatomic,strong) UIColor *borderColor;
@property (nonatomic,assign) NSInteger lineWidth;

@end
