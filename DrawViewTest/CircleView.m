//
//  CircleView.m
//  DrawViewTest
//
//  Created by richard on 16/4/19.
//  Copyright © 2016年 ztesoft. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView

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
    if(_lineWidth>0)
        CGContextSetLineWidth(context, _lineWidth);//line width
    else
        CGContextSetLineWidth(context, 2);//default width
    
    CGContextSetLineCap(context, kCGLineCapRound);//line head and tial style
    CGContextSetLineJoin(context, kCGLineJoinRound);
    //设置线的颜色
    if (self.lineColor) {
        CGContextSetStrokeColorWithColor(context, self.lineColor.CGColor);
    }else{
        CGContextSetRGBStrokeColor(context, 1, 0, 0, 1);
    }
    
//    NSInteger width = self.bounds.size.width;
//    NSInteger height = self.bounds.size.height;
//    CGFloat radius = 0;
//    if (width>=height) {
//        radius = height/2;
//    }else{
//        radius = width/2;
//    }
    
    CGContextAddEllipseInRect(context, self.bounds);
    
    CGContextStrokePath(context);
    
}


@end
