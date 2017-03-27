### FGTableHeaderView<br>
[![Cocoapods Compatible](https://img.shields.io/cocoapods/v/SnapKit.svg)](https://img.shields.io/cocoapods/v/SnapKit.svg)
[![Pod Version](http://img.shields.io/cocoapods/v/SDWebImage.svg?style=flat)](http://cocoadocs.org/docsets/FGTableHeaderView/)
[![Pod Platform](http://img.shields.io/cocoapods/p/SDWebImage.svg?style=flat)](http://cocoadocs.org/docsets/FGTableHeaderView/)<br>
一个方法实现表头部视图缩放<br>
![演示](https://github.com/Insfgg99x/FGTableHeaderView/blob/master/demo.gif)<br>
<br>
###Guideline
-------------------------------------------------------------
一个方式实现UITableView的头部视图缩放
- [x] 加载本地图片
- [x] 加载网络图片

###Installation:
Cocopods:
`pod 'FGTableHeaderView', '~> 2.0'`

Manual:
download [FGTableHeaderView](https://github.com/Insfgg99x/FGTableHeaderView.git) and drag"FGTableHeaderView" folder  into projec.

###Useage:

- load local image

```
[_tbView fg_setHeaderFrame:CGRectMake(0, 0, self.view.frame.size.width, 150) image:[UIImage imageNamed:@"IMG_2174.jpg"]];
```
- load web image

```
[_tbView fg_setHeaderFrame:CGRectMake(0, 0, self.view.frame.size.width, 150)
imageUrl:[NSURL URLWithString:@"http://upload-images.jianshu.io/upload_images/937405-fa2ec7eee51227f7.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240"]
placeHolder:nil];
```
###Support Me

万水千山总是情，给个star行不行._. [项目地址](https://github.com/Insfgg99x/FGTableHeaderView.git)
-------------------------------------------------------------
Copyright(c) 2016 CGPointZero. All rights reserved.<br>
