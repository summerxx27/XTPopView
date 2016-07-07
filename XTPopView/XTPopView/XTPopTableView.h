//
//  XTPopTableView.h
//  XTPopView
//
//  Created by zjwang on 16/7/7.
//  Copyright © 2016年 夏天. All rights reserved.
//

#import "XTPopViewBase.h"
@protocol SelectIndexPathDelegate <NSObject>

- (void)selectIndexPathRow:(NSInteger )index;

@end

@interface XTPopTableView : XTPopViewBase<UITableViewDelegate, UITableViewDataSource>
// titles
@property (nonatomic, strong) NSArray           * _Nonnull dataArray;
// images
@property (nonatomic, strong) NSArray           * _Nonnull images;
// height
@property (nonatomic, assign) CGFloat           row_height;
// font
@property (nonatomic, assign) CGFloat           fontSize;
// textColor
@property (nonatomic, strong) UIColor           * _Nonnull titleTextColor;
@property (nonatomic, assign) NSTextAlignment   textAlignment;
// delegate
@property (nonatomic, assign) id <SelectIndexPathDelegate> _Nonnull delegate;
@end
