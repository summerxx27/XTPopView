![](http://ww4.sinaimg.cn/large/e6a4355cgw1f5lbvn61r1g208w0fqtf8.gif)
![](http://ww1.sinaimg.cn/large/e6a4355cgw1f5leiopp3fj206w0cbaa4.jpg)
# XTPopView(支持十二种样式)
##### 第一种
```objectivec
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
XTPopTableView *view1 = [[XTPopTableView alloc] initWithOrigin:point Width:300 Height:60 Type:XTTypeOfUpLeft Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
view1.delegate = self;
view1.dataArray = @[@"您有一位朋友找您", @"好的 加我的qq群: 498143780"];
view1.row_height = 30;
view1.titleTextColor = [UIColor colorWithRed:0.2669 green:0.765 blue:1.0 alpha:1.0];
[view1 popView];
}
break;
case 1:
{
// 如果你的控件是属性, 这里可以进行相对布局
CGPoint point = CGPointMake(90,144 + 86 * 1);
XTPopTableView *view1 = [[XTPopTableView alloc] initWithOrigin:point Width:200 Height:30 Type:XTTypeOfUpCenter Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
view1.dataArray = @[@"您有一位朋友找您"];
view1.row_height = 30;
view1.titleTextColor = [UIColor colorWithRed:0.2669 green:0.765 blue:1.0 alpha:1.0];
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
case 5:
{
// 如果你的控件是属性, 这里可以进行相对布局
CGPoint point = CGPointMake(90,144 + 86 * 5);
XTPopTableView *view1 = [[XTPopTableView alloc] initWithOrigin:point Width:200 Height:30 Type:XTTypeOfDownCenter Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
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
```
如果要实现点击方法
签订协议
```objectivec
@interface ViewController ()<SelectIndexPathDelegate>

```
实现代理方法
```objectivec
- (void)selectIndexPathRow:(NSInteger)index
```

##### 第二种
```objectivec
// 如果你的控件是属性, 这里可以进行相对布局
CGPoint point = CGPointMake(90 * 1,144);
XTPopNormalView *view1 = [[XTPopNormalView alloc] initWithOrigin:point Width:300 Height:60 Type:XTTypeOfUpLeft Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
[view1 popViewNormal];
[view1.btnDiss setTitle:@"点击我 消失" forState:UIControlStateNormal];
[self.view addSubview:view1];
```