//
//  UITableView+FGTableHeaderView.m
//  FGTableHeaderView
//
//  Created by 夏桂峰 on 16/9/18.
//  Copyright © 2016年 夏桂峰. All rights reserved.
//

#import "UITableView+FGTableHeaderView.h"
#import <objc/runtime.h>
#import "UIImageView+WebCache.h"

char *const fg_headerImageView="fg_headerImageView";
char *const fg_originHeaderFrame="fg_originHeaderFrame";

@implementation UITableView (FGTableHeaderView)

-(void)fg_setHeaderFrame:(CGRect)frame image:(UIImage *)image{
    
    objc_setAssociatedObject(self, &fg_originHeaderFrame, [NSValue valueWithCGRect:frame], OBJC_ASSOCIATION_RETAIN);
    UIImageView *imv=[[UIImageView alloc] initWithFrame:frame];
    imv.image=image;
    imv.contentMode=UIViewContentModeScaleAspectFill;
    objc_setAssociatedObject(self, &fg_headerImageView, imv, OBJC_ASSOCIATION_RETAIN);
    [self insertSubview:imv atIndex:0];
    [self addObserver:self forKeyPath:@"contentOffset" options:NSKeyValueObservingOptionNew context:nil];
    UIView *header=[[UIView alloc] initWithFrame:frame];
    self.tableHeaderView=header;
}
-(void)fg_setHeaderFrame:(CGRect)frame imageUrl:(NSURL *)imagUrl placeHolder:(UIImage *)placeHolderImage{
    
    UIImageView *imv=[[UIImageView alloc] initWithFrame:frame];
    imv.contentMode=UIViewContentModeScaleAspectFill;
    objc_setAssociatedObject(self, &fg_headerImageView, imv, OBJC_ASSOCIATION_RETAIN);
    [self insertSubview:imv atIndex:0];
    
    objc_setAssociatedObject(self, &fg_originHeaderFrame, [NSValue valueWithCGRect:frame], OBJC_ASSOCIATION_RETAIN);
    [self addObserver:self forKeyPath:@"contentOffset" options:NSKeyValueObservingOptionNew context:nil];
    UIView *header=[[UIView alloc] initWithFrame:frame];
    self.tableHeaderView=header;
    
    [imv sd_setImageWithURL:imagUrl placeholderImage:placeHolderImage];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    
    CGRect origin=[objc_getAssociatedObject(self, &fg_originHeaderFrame) CGRectValue];
    UIImageView *imv=objc_getAssociatedObject(self, &fg_headerImageView);
    CGFloat offset=self.contentOffset.y;
    if (offset<0){
        
        imv.frame=CGRectMake(offset, offset, self.frame.size.width-offset*2, origin.size.height-offset);
    }
    else{
        
        imv.frame=origin;
    }
}

@end
