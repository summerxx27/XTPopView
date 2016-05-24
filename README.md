![](http://ww1.sinaimg.cn/large/e6a4355cgw1f46indb1gmj206n07odfq.jpg)
![](http://ww3.sinaimg.cn/large/e6a4355cgw1f46irwh8bij205v07tmx1.jpg)
# XTPopView(支持十二种样式)
```
  // 支持的类型
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
    CGPoint point = CGPointMake(_customBtn.center.x,_customBtn.frame.origin.y + 64);
    XTPopView *view1 = [[XTPopView alloc] initWithOrigin:point Width:130 Height:40 * 4 Type:XTTypeOfUpRight Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
    view1.dataArray = @[@"发起群聊",@"添加朋友", @"扫一扫", @"收付款"];
    view1.images = @[@"发起群聊",@"添加朋友", @"扫一扫", @"付款"];
    view1.fontSize = 13;
    view1.row_height = 40;
    view1.titleTextColor = [UIColor whiteColor];
    view1.delegate = self;
    [view1 popView];
```
如果要实现点击方法
签订协议
```
@interface ViewController ()<selectIndexPathDelegate>

```
实现代理方法
```
- (void)selectIndexPathRow:(NSInteger)index
```
