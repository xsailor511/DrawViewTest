//
//  ViewController.m
//  DrawViewTest
//
//  Created by richard on 16/4/19.
//  Copyright © 2016年 ztesoft. All rights reserved.
//

#import "ViewController.h"
#import "WYImageView.h"
#import "CrossLineView.h"
#import "BorderView.h"
#import "ArcView.h"
#import "CircleView.h"
#import "TriangleView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    WYImageView *imageView = [[WYImageView alloc] initWithFrame:CGRectMake(10, 20, 156, 55)];
    [imageView setBackgroundColor:[UIColor clearColor]];
    imageView.image = [UIImage imageNamed:@"qipao"];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 156, 40)];
    [label setFont:[UIFont systemFontOfSize:17]];
    [label setTextAlignment:NSTextAlignmentCenter];
    [label setTextColor:[UIColor blackColor]];
    label.text = @"自定义的ImageView";
    
    [imageView addSubview:label];
    
    [self.view addSubview:imageView];
    
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear: animated];
    //原装UIImageView
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(180, 20, 156, 55)];
    [imageView setBackgroundColor:[UIColor clearColor]];
    [imageView setImage:[UIImage imageNamed:@"qipao"]];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 156, 40)];
    [label setFont:[UIFont systemFontOfSize:17]];
    [label setTextAlignment:NSTextAlignmentCenter];
    [label setTextColor:[UIColor blackColor]];
    label.text = @"原装UIImageView";
    [imageView addSubview:label];
    
    [self.view addSubview:imageView];
    
    //自定义交叉View
    CrossLineView *crossLineView = [[CrossLineView alloc] initWithFrame:CGRectMake(10, 80, 150, 100)];
    [crossLineView setLineColor:[UIColor blueColor]];
    [crossLineView setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:crossLineView];
    
    //带边框的View
    BorderView *borderView = [[BorderView alloc] initWithFrame:CGRectMake(180, 80, 150, 100)];
    [borderView setLineWidth:3];
    [borderView setBorderColor:[UIColor redColor]];
    [borderView setBorderType:BORDER_TYPE_DOTTED];
    
    [self.view addSubview:borderView];
    
    
    
    ArcView *arcView = [[ArcView alloc] initWithFrame:CGRectMake(10, 200, 150, 100)];
    [arcView setLineColor:[UIColor redColor]];
    [arcView setLineWidth:3];
    [self.view addSubview:arcView];
    
    CircleView *circleView = [[CircleView alloc] initWithFrame:CGRectMake(180, 200, 150, 100)];
    [circleView setLineColor:[UIColor redColor]];
    [circleView setLineWidth:3];
    [self.view addSubview:circleView];
    
    
    TriangleView *triangleView = [[TriangleView alloc] initWithFrame:CGRectMake(10, 320, 150, 100)];
    [triangleView setLineColor:[UIColor whiteColor]];
    [triangleView setFillColor:[UIColor yellowColor]];
    
    [self.view addSubview:triangleView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
