//
//  TriangleView.m
//  DrawViewTest
//
//  Created by richard on 16/4/19.
//  Copyright © 2016年 ztesoft. All rights reserved.
//

#import "TriangleView.h"

@implementation TriangleView

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
    CGContextAddLineToPoint(context, self.frame.size.width-10, 10);
    
    CGContextAddLineToPoint(context, self.frame.size.width/2, self.frame.size.height-10);
    CGContextAddLineToPoint(context,10,10);
    //CGContextAddLineToPoint(context, 10, 10);
    //CGContextStrokePath(context);//渲染一次
    
    //填充颜色
    if (self.fillColor) {
        CGContextSetFillColorWithColor(context, _fillColor.CGColor);//填充颜色
    }else{
        CGContextSetFillColorWithColor(context, [UIColor blueColor].CGColor);//填充颜色
    }
    
    CGContextFillPath(context);
    //CGContextFillRect(context, CGRectMake(20, 20, self.frame.size.width-40, self.frame.size.height-40));
}


@end
