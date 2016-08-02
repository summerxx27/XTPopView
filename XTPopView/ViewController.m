//
//  ViewController.m
//  XTPopView
//
//  Created by zjwang on 16/5/23.
//  Copyright © 2016年 夏天. All rights reserved.
//

#import "ViewController.h"
#import "XTPopView.h"
#import "XTPopNormalView.h"
@interface ViewController ()<SelectIndexPathDelegate>
@property(strong,readwrite,nonatomic)UIButton *button;
@property (nonatomic, strong) UIButton *customBtn;

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
    
    for (int i = 0; i < 5; i ++) {
            //
            UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
            btn1.frame = CGRectMake(80, 104 + i * 86, 40, 30);
            btn1.backgroundColor = [UIColor lightGrayColor];
            [self.view addSubview:btn1];
            [btn1 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
            btn1.tag = i;
    }
}
- (void)click:(UIButton *)btn
{
    CGPoint point = CGPointMake(btn.frame.origin.x + btn.frame.size.width / 2, btn.frame.origin.y + btn.frame.size.width + 25);
    XTPopTableView *view1 = [[XTPopTableView alloc] initWithOrigin:point Width:150 Height:30 * 3 Type:XTTypeOfUpRight Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
    view1.dataArray = @[@"添加好友", @"扫一扫", @"收付款"];
    // 如果想设置图片
//    view1.images = @["..."];
    view1.row_height = 30;
    view1.titleTextColor = [UIColor colorWithRed:0.2669 green:0.765 blue:1.0 alpha:1.0];
    [view1 popView];
}
- (void)btnClick:(UIButton *)btn
{
    
    /**
     XTTypeOfUpLeft,     // 上左
     XTTypeOfUpCenter,   // 上中
     XTTypeOfUpRight,    // 上右
     
     XTTypeOfDownLeft,   // 下左
     XTTypeOfDownCenter, // 下中
     XTTypeOfDownRight,  // 下右
     
     XTTypeOfLeftUp,     // 左上
     XTTypeOfLeftCenter, // 左中
     XTTypeOfLeftDown,   // 左下
     
     XTTypeOfRightUp,    // 右上
     XTTypeOfRightCenter,// 右中
     XTTypeOfRightDown,  // 右下
     */
    switch (btn.tag) {
        case 0:
        {
            // 如果你的控件是属性, 这里可以进行相对布局
            CGPoint point = CGPointMake(90 * 1,144);
            XTPopNormalView *view1 = [[XTPopNormalView alloc] initWithOrigin:point Width:200 Height:60 Type:XTTypeOfUpLeft Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
            [view1 popViewNormal];
            [view1.btnDiss setTitle:@"点击我 消失" forState:UIControlStateNormal];
            [self.view addSubview:view1];
            
            
        }
            break;
        case 1:
        {
            // 如果你的控件是属性, 这里可以进行相对布局
            CGPoint point = CGPointMake(90,144 + 86 * 1);
            XTPopTableView *view1 = [[XTPopTableView alloc] initWithOrigin:point Width:200 Height:30*2 Type:XTTypeOfUpCenter Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
            view1.dataArray = @[@"您有一位朋友找您", @"叫summerxx"];
            view1.row_height = 30;
            view1.titleTextColor = [UIColor colorWithRed:0.2669 green:0.765 blue:1.0 alpha:1.0];
            view1.delegate = self;
            [view1 popView];
        }
            break;
        case 2:
        {
            // 如果你的控件是属性, 这里可以进行相对布局
            CGPoint point = CGPointMake(90,144 + 86 * 2);
            XTPopTableView *view1 = [[XTPopTableView alloc] initWithOrigin:point Width:200 Height:30 Type:XTTypeOfDownLeft Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
            view1.dataArray = @[@"您有一位朋友找您"];
            view1.row_height = 30;
            view1.titleTextColor = [UIColor colorWithRed:0.2669 green:0.765 blue:1.0 alpha:1.0];
            [view1 popView];
        }
            break;
        case 3:
        {
            // 如果你的控件是属性, 这里可以进行相对布局
            CGPoint point = CGPointMake(90,144 + 86 * 3);
            XTPopTableView *view1 = [[XTPopTableView alloc] initWithOrigin:point Width:200 Height:30 Type:XTTypeOfDownCenter Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
            view1.dataArray = @[@"您有一位朋友找您"];
            view1.row_height = 30;
            view1.titleTextColor = [UIColor colorWithRed:0.2669 green:0.765 blue:1.0 alpha:1.0];
            [view1 popView];
        }
            break;
        case 4:
        {
            // 如果你的控件是属性, 这里可以进行相对布局
            CGPoint point = CGPointMake(90,144 + 86 * 4);
            XTPopTableView *view1 = [[XTPopTableView alloc] initWithOrigin:point Width:200 Height:30 Type:XTTypeOfLeftUp Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
            view1.dataArray = @[@"您有一位朋友找您"];
            view1.row_height = 30;
            view1.titleTextColor = [UIColor colorWithRed:0.2669 green:0.765 blue:1.0 alpha:1.0];
            [view1 popView];
        }
            break;

        default:
            break;
    }

}
- (void)selectIndexPathRow:(NSInteger )index
{
    NSLog(@"%ld", index);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
