//
//  UITableView+FGTableHeaderView.h
//  FGTableHeaderView
//
//  Created by 夏桂峰 on 16/9/18.
//  Copyright © 2016年 夏桂峰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (FGTableHeaderView)

-(void)fg_setHeaderFrame:(CGRect)frame image:(UIImage *)image;

-(void)fg_setHeaderFrame:(CGRect)frame imageUrl:(NSURL *)imagUrl placeHolder:(UIImage *)placeHolderImage;

@end
