//
//  WYImageView.m
//  DrawViewTest
//
//  Created by richard on 16/4/19.
//  Copyright © 2016年 ztesoft. All rights reserved.
//

#import "WYImageView.h"

@implementation WYImageView

-(id)init{
    self = [super init];
    if (self) {
        
    }
    
    return self;
}

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    
    return self;
}

-(nullable instancetype)initWithImage:(nullable UIImage*)image{
    CGRect frame = CGRectMake(0, 0, image.size.height, image.size.height);
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}
/**
 *  包含裁剪功能
 *
 *  @param rect <#rect description#>
 */
-(void)drawRect:(CGRect)rect{
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextSaveGState(ctx);
    
    // 0.画圆
    CGContextAddEllipseInRect(ctx, CGRectMake(0, 0, 100, 60));
    // 裁剪
    CGContextClip(ctx);
    CGContextFillPath(ctx);
    
    // 1.显示图片
    if (self.image) {
        [self.image drawAtPoint:CGPointMake(0, 0)];
    }
    
    CGContextRestoreGState(ctx);
    
//    CGContextAddRect(ctx, CGRectMake(0, 0, 50, 50));
//    CGContextFillPath(ctx);
    
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
