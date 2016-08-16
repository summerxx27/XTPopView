![](http://ww4.sinaimg.cn/large/e6a4355cgw1f5lbvn61r1g208w0fqtf8.gif)
![](http://ww1.sinaimg.cn/large/e6a4355cgw1f5leiopp3fj206w0cbaa4.jpg)
# XTPopView(支持十二种样式)
##### 第一种
```objectivec

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

- (void)click:(UIButton *)btn
{
    CGPoint point           = CGPointMake(btn.frame.origin.x + btn.frame.size.width / 2, btn.frame.origin.y + btn.frame.size.width + 25);
    XTPopTableView *popView = [[XTPopTableView alloc] initWithOrigin:point Width:150 Height:30 * 3 Type:XTTypeOfUpRight Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
    popView.dataArray       = @[@"添加朋友", @"扫一扫", @"付款"];
    popView.images          = @[@"添加朋友", @"扫一扫", @"付款"];
    popView.row_height      = 30;
    popView.delegate        = self;
    popView.titleTextColor  = [UIColor colorWithRed:0.2669 green:0.765 blue:1.0 alpha:1.0];
    [popView popView];
}
```

```objectivec
- (void)selectIndexPathRow:(NSInteger )index
{
    NSLog(@"Index ======== %ld", index);
}
```

```objectivec
- (void)btnClick
{
    CGPoint point           = self.view.center;
    XTPopNormalView * view  = [[XTPopNormalView alloc] initWithOrigin:point Width:150 Height:150 Type:XTTypeOfDownCenter Color:[UIColor cyanColor]];
    [view.btnDiss setTitle:@"点我 DISSMISS" forState:UIControlStateNormal];
    [view popView];
}
```