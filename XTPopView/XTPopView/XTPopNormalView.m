//
//  XTPopNormalView.m
//  XTPopView
//
//  Created by Mac on 16/7/27.
//  Copyright © 2016年 夏天. All rights reserved.
//

#import "XTPopNormalView.h"

@interface XTPopNormalView ()

@end

@implementation XTPopNormalView
- (instancetype)initWithOrigin:(CGPoint)origin Width:(CGFloat)width Height:(CGFloat)height Type:(XTDirectionType)type Color:(UIColor *)color
{
    self = [super initWithOrigin:origin Width:width Height:30 Type:type Color:color];
    self.type = type;
    [self setUI:width];
    return self;
}
- (UIButton *)btnDiss
{
    if (!_btnDiss) {
        _btnDiss = [UIButton buttonWithType:UIButtonTypeCustom];
    }
    return _btnDiss;
}
- (void)setUI:(CGFloat)width
{
    [self.backGoundView addSubview:self.btnDiss];
    _btnDiss.frame = CGRectMake(0, 0, width, 30);
    [_btnDiss addTarget:self action:@selector(dissClick) forControlEvents:UIControlEventTouchUpInside];
}
- (void)dissClick
{
    [UIView animateWithDuration:0.25 animations:^{
        //
        [self removeFromSuperview];
    }];
}
#pragma mark - 
- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
}
#pragma mark -
- (void)popViewNormal
{
    switch (self.type) {
        case XTTypeOfUpLeft: {
            {
                self.backGoundView.frame = CGRectMake(self.origin.x, self.origin.y + Length, 0, 0);
                CGFloat origin_x = self.origin.x - Length2;
                CGFloat origin_y = self.origin.y + Length;
                CGFloat size_width = self.width;
                CGFloat size_height = self.height;
                [self startAnimateNormalView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
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
                [self startAnimateNormalView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
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
                [self startAnimateNormalView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
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
                [self startAnimateNormalView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
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
                [self startAnimateNormalView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
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
                [self startAnimateNormalView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
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
                [self startAnimateNormalView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
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
                [self startAnimateNormalView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
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
                [self startAnimateNormalView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
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
                [self startAnimateNormalView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
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
                [self startAnimateNormalView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
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
                [self startAnimateNormalView_x:origin_x _y:origin_y origin_width:size_width origin_height:size_height];
            }
            break;
        }
    }
}
- (void)startAnimateNormalView_x:(CGFloat) x
                              _y:(CGFloat) y
                    origin_width:(CGFloat) width
                   origin_height:(CGFloat) height
{
    self.backGoundView.frame = CGRectMake(x, y, width, height);
}
#pragma mark -
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"------------");
    
}
#pragma mark -


@end
