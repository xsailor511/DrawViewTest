//
//  ArcView.m
//  DrawViewTest
//
//  Created by richard on 16/4/19.
//  Copyright © 2016年 ztesoft. All rights reserved.
//

#import "ArcView.h"

@implementation ArcView

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
    
    NSInteger width = self.bounds.size.width;
    NSInteger height = self.bounds.size.height;
    CGFloat radius = 0;
    if (width>=height) {
        radius = height/2;
    }else{
        radius = width/2;
    }
    //设置矩阵变换要在添加图形之前
    CGContextRotateCTM(context, M_PI_4);
    
    // x\y : 圆心
    // radius : 半径
    // startAngle : 开始角度
    // endAngle : 结束角度
    // clockwise : 圆弧的伸展方向(0:顺时针, 1:逆时针)
    CGContextAddArc(context, self.bounds.size.width/2, self.bounds.size.height/2, radius, 0, M_PI, 1);
    CGContextStrokePath(context);
    
    
    
    CGContextSaveGState(context);//保存context，以便进行其他绘制
    
    //其他绘制代码
    
    
    CGContextRestoreGState(context);//恢复context，进行之前的绘制
}


@end
