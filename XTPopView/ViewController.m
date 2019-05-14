//
//  ViewController.m
//  XTPopView
//
//  Created by zjwang on 16/5/23.
//  Copyright © 2016年 夏天. All rights reserved.
//

#import "ViewController.h"
#import "XTPopView.h"
@interface ViewController ()<SelectIndexPathDelegate>
@property(strong,readwrite,nonatomic)UIButton *button;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 40, 40);
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    [btn setTitle:@"➕" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    
    _button = [UIButton buttonWithType:UIButtonTypeCustom];
    _button.frame = CGRectMake(0, 0, 100, 50);
    _button.center = self.view.center;
    [self.view addSubview:_button];
    _button.backgroundColor = [UIColor colorWithRed:0.3434 green:0.7864 blue:1.0 alpha:1.0];
    [_button addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
}
- (void)click:(UIButton *)btn
{
    CGPoint point           = CGPointMake(self.view.frame.size.width - 40, btn.frame.origin.y + btn.frame.size.width + 35);
    XTPopTableView *popView = [[XTPopTableView alloc] initWithOrigin:point Width:150 Height:30 * 3 Type:XTTypeOfUpRight Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
    popView.dataArray       = @[@"添加朋友", @"扫一扫", @"付款"];
    popView.images          = @[@"添加朋友", @"扫一扫", @"付款"];
    popView.row_height      = 30;
    popView.delegate        = self;
    popView.titleTextColor  = [UIColor colorWithRed:0.2669 green:0.765 blue:1.0 alpha:1.0];
    [popView popView];
}
- (void)btnClick
{
    CGPoint point           = self.view.center;
    XTPopNormalView * view  = [[XTPopNormalView alloc] initWithOrigin:point Width:150 Height:150 Type:XTTypeOfDownCenter Color:[UIColor cyanColor]];
    [view.btnDiss setTitle:@"点我 DISSMISS" forState:UIControlStateNormal];
    [view popView];

}
- (void)selectIndexPathRow:(NSInteger )index
{
    NSLog(@"Index ======== %ld", index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
