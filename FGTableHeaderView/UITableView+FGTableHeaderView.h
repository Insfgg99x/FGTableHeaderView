//
//  UITableView+FGTableHeaderView.h
//  FGTableHeaderView
//
//  Created by 夏桂峰 on 16/9/18.
//  Copyright © 2016年 夏桂峰. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImage+GIF.h"

@interface UITableView (FGTableHeaderView)

/**
 本地图片设置UITableView的tableHeaderView自动缩放

 @param frame tableHeaderView的frame
 @param image 本地的image，若需要gif,用[UIImage sd_animatedGIFNamed:@"xxx"];或[UIImage sd_animatedGIFWithData:xxx];
 */
-(void)fg_setHeaderFrame:(CGRect)frame image:(UIImage *)image;

/**
 网络图片设置UITableView的tableHeaderView自动缩放

 @param frame tableHeaderView的frame
 @param imagUrl 图片的url
 @param placeHolderImage 图片占位符
 */
-(void)fg_setHeaderFrame:(CGRect)frame imageUrl:(NSURL *)imagUrl placeHolder:(UIImage *)placeHolderImage;

@end
