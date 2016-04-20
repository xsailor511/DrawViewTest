//
//  BorderView.m
//  DrawViewTest
//
//  Created by richard on 16/4/19.
//  Copyright © 2016年 ztesoft. All rights reserved.
//

#import "BorderView.h"

@implementation BorderView

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
    if (_lineWidth>0) {
        CGContextSetLineWidth(context, _lineWidth);//line width
    }else{
        CGContextSetLineWidth(context, 2);//default width is 2
        _lineWidth = 2;
    }
    
    CGContextSetLineCap(context, kCGLineCapRound);//line head and tial style
    CGContextSetLineJoin(context, kCGLineJoinRound);
    //设置线的颜色
    if (self.borderColor) {
        CGContextSetStrokeColorWithColor(context, self.borderColor.CGColor);
    }else{
        CGContextSetRGBStrokeColor(context, 1, 0, 0, 1);
    }
    
    if (_borderType==BORDER_TYPE_DOTTED) {
        CGFloat lengths[2] = {10,5};
        CGContextSetLineDash(context, 0, lengths, 2);
    }
    
    //CGContextAddRect(context, self.bounds);
    
    CGContextStrokeRect(context, self.bounds);//这个也可以
    //CGContextDrawPath(context, kCGPathFillStroke);这个可以画矩形
   //填充颜色
    CGContextSetFillColorWithColor(context, [UIColor blueColor].CGColor);//填充颜色
    CGContextFillRect(context, CGRectMake(20, 20, self.frame.size.width-40, self.frame.size.height-40));
    
    //CGContextFillPath(context);
//    CGContextMoveToPoint(context, 0, 0);//从该点开始渲染
//    CGContextAddLineToPoint(context, self.frame.size.width, 0);
//    CGContextAddLineToPoint(context, self.frame.size.width, self.frame.size.height);
//    CGContextAddLineToPoint(context, 0, self.frame.size.height);
//    CGContextAddLineToPoint(context, 0, 0);
    //CGContextClosePath(context);
    
//    CGContextStrokePath(context);//渲染一次
}

@end
