//
//  CrossLineView.m
//  DrawViewTest
//
//  Created by richard on 16/4/19.
//  Copyright © 2016年 ztesoft. All rights reserved.
//

#import "CrossLineView.h"

@implementation CrossLineView

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
    
}
/**
 *  绘制一个叉号，先绘制正斜杠，后绘制反斜杠
 *
 *  @param rect <#rect description#>
 */
-(void)drawRect:(CGRect)rect{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 8);//line width
    CGContextSetLineCap(context, kCGLineCapRound);//line head and tial style
    CGContextSetLineJoin(context, kCGLineJoinRound);
    //设置线的颜色
    if (self.lineColor) {
        CGContextSetStrokeColorWithColor(context, self.lineColor.CGColor);
    }else{
        CGContextSetRGBStrokeColor(context, 1, 0, 0, 1);
    }
    CGContextMoveToPoint(context, 10, 10);//从该点开始渲染
    CGContextAddLineToPoint(context, self.frame.size.width-10, self.frame.size.height-10);
    CGContextStrokePath(context);//渲染一次
    
    CGContextMoveToPoint(context, self.frame.size.width-10, 10);
    CGContextAddLineToPoint(context, 10, self.frame.size.height-10);
    CGContextStrokePath(context);//渲染一次
}


@end
