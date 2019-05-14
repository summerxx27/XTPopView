//
//  XTPopView.m
//  XTPopView
//
//  Created by zjwang on 16/5/23.
//  Copyright © 2016年 夏天. All rights reserved.
//

#import "XTPopViewBase.h"

@interface XTPopViewBase ()

@end

@implementation XTPopViewBase

- (instancetype)initWithOrigin:(CGPoint)origin Width:(CGFloat)width Height:(CGFloat)height Type:(XTDirectionType)type Color:(UIColor *)color
{
    
    self = [super initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        // 箭头的位置
        self.origin = origin;
        // 视图的宽度
        self.width = width;
        // 视图的高度
        self.height = height;
        // 类型
        self.type = type;
        self.backGoundView = [[UIView alloc] initWithFrame:CGRectMake(origin.x, origin.y, width, height)];
        self.backGoundView.backgroundColor = color;
        [self addSubview:self.backGoundView];
    }
    return self;
}
#pragma mark - drawRect
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    switch (self.type) {
        case XTTypeOfUpLeft:
        case XTTypeOfUpCenter:
        case XTTypeOfUpRight:{
            {
                CGFloat startX = self.origin.x;
                CGFloat startY = self.origin.y;
                CGContextMoveToPoint(context, startX, startY);
                CGContextAddLineToPoint(context, startX + Length, startY + Length);
                CGContextAddLineToPoint(context, startX - Length, startY + Length);
            }
            break;
        }
        case XTTypeOfDownLeft:
        case XTTypeOfDownCenter:
        case XTTypeOfDownRight: {
            {
                CGFloat startX = self.origin.x;
                CGFloat startY = self.origin.y;
                CGContextMoveToPoint(context, startX, startY);
                CGContextAddLineToPoint(context, startX - Length, startY - Length);
                CGContextAddLineToPoint(context, startX + Length, startY - Length);
            }
            break;
        }
        case XTTypeOfLeftUp:
        case XTTypeOfLeftCenter:
        case XTTypeOfLeftDown: {
            {
                CGFloat startX = self.origin.x;
                CGFloat startY = self.origin.y;
                CGContextMoveToPoint(context, startX, startY);
                CGContextAddLineToPoint(context, startX + Length, startY - Length);
                CGContextAddLineToPoint(context, startX + Length, startY + Length);
            }
            break;
        }
        case XTTypeOfRightUp:
        case XTTypeOfRightCenter:
        case XTTypeOfRightDown: {
            {
                CGFloat startX = self.origin.x;
                CGFloat startY = self.origin.y;
                CGContextMoveToPoint(context, startX, startY);
                CGContextAddLineToPoint(context, startX - Length, startY - Length);
                CGContextAddLineToPoint(context, startX - Length, startY + Length);
            }
            break;
        }
    }
    
    CGContextClosePath(context);
    [self.backGoundView.backgroundColor setFill];
    [self.backgroundColor setStroke];
    CGContextDrawPath(context, kCGPathFillStroke);
}
#pragma mark - popView
- (void)popView
{
    UIWindow *windowView = [UIApplication sharedApplication].keyWindow;
    [windowView addSubview:self];
     
    switch (self.type) {
        case XTTypeOfUpLeft: {
            {
                self.backGoundView.frame = CGRectMake(self.origin.x, self.origin.y + Length, 0, 0);
                CGFloat origin_x = self.origin.x - Length2;
                CGFloat origin_y = self.origin.y + Length;
                CGFloat size_width = self.width;
                CGFloat size_height = self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case XTTypeOfUpCenter: {
            {
                self.backGoundView.frame = CGRectMake(self.origin.x, self.origin.y + Length, 0, 0);
                CGFloat origin_x = self.origin.x - self.width / 2;
                CGFloat origin_y = self.origin.y + Length;
                CGFloat size_width = self.width;
                CGFloat size_height = self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case XTTypeOfUpRight: {
            {
                self.backGoundView.frame = CGRectMake(self.origin.x, self.origin.y + Length, 0, 0);
                CGFloat origin_x = self.origin.x + Length2;
                CGFloat origin_y = self.origin.y + Length;
                CGFloat size_width = -self.width;
                CGFloat size_height = self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case XTTypeOfDownLeft: {
            {
                self.backGoundView.frame = CGRectMake(self.origin.x, self.origin.y - Length, 0, 0);
                CGFloat origin_x = self.origin.x - Length2;
                CGFloat origin_y = self.origin.y - Length;
                CGFloat size_width = self.width;
                CGFloat size_height = -self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case XTTypeOfDownCenter: {
            {
                self.backGoundView.frame = CGRectMake(self.origin.x, self.origin.y - Length, 0, 0);
                CGFloat origin_x = self.origin.x - self.width / 2;
                CGFloat origin_y = self.origin.y - Length;
                CGFloat size_width = self.width;
                CGFloat size_height = -self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case XTTypeOfDownRight: {
            {
                self.backGoundView.frame = CGRectMake(self.origin.x, self.origin.y - Length, 0, 0);
                CGFloat origin_x = self.origin.x-self.width + Length2;
                CGFloat origin_y = self.origin.y - Length;
                CGFloat size_width = self.width;
                CGFloat size_height = -self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }

        case XTTypeOfLeftUp: {
            {
                self.backGoundView.frame = CGRectMake(self.origin.x + Length, self.origin.y, 0, 0);
                CGFloat origin_x = self.origin.x + Length;
                CGFloat origin_y = self.origin.y - Length2;
                CGFloat size_width = self.width;
                CGFloat size_height = self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case XTTypeOfLeftCenter: {
            {
                self.backGoundView.frame = CGRectMake(self.origin.x + Length, self.origin.y, 0, 0);
                CGFloat origin_x = self.origin.x + Length;
                CGFloat origin_y = self.origin.y - self.height / 2;
                CGFloat size_width = self.width;
                CGFloat size_height = self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case XTTypeOfLeftDown: {
            {
                self.backGoundView.frame = CGRectMake(self.origin.x + Length, self.origin.y, 0, 0);
                CGFloat origin_x = self.origin.x + Length;
                CGFloat origin_y = self.origin.y - self.height + Length2;
                CGFloat size_width = self.width;
                CGFloat size_height = self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case XTTypeOfRightUp: {
            {
                self.backGoundView.frame = CGRectMake(self.origin.x - Length, self.origin.y, 0, 0);
                CGFloat origin_x = self.origin.x - Length;
                CGFloat origin_y = self.origin.y - Length2;
                CGFloat size_width = -self.width;
                CGFloat size_height = self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case XTTypeOfRightCenter: {
            {
                self.backGoundView.frame = CGRectMake(self.origin.x - Length, self.origin.y, 0, 0);
                CGFloat origin_x = self.origin.x - Length;
                CGFloat origin_y = self.origin.y - self.height / 2;
                CGFloat size_width = -self.width;
                CGFloat size_height = self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
        case XTTypeOfRightDown: {
            {
                self.backGoundView.frame = CGRectMake(self.origin.x - Length, self.origin.y, 0, 0);
                CGFloat origin_x = self.origin.x - Length;
                CGFloat origin_y = self.origin.y - self.height + Length2;
                CGFloat size_width = -self.width;
                CGFloat size_height = self.height;
                [self startAnimateView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
    }
}
#pragma mark -
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if (![[touches anyObject].view isEqual:self.backGoundView]) {
        [self dismiss];
    }
    
}
#pragma mark -
- (void)dismiss
{
    NSArray *results = [self subviews];
    for (UIView *view in results) {
        [view removeFromSuperview];
    }
    [self removeFromSuperview];
}
#pragma mark -
- (void)startAnimateView_x:(CGFloat) x
                        _y:(CGFloat) y
              origin_width:(CGFloat) width
             origin_height:(CGFloat) height
{
    self.backGoundView.frame = CGRectMake(x, y, width, height);
}
@end
