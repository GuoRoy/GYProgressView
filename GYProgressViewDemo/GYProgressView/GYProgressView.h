//
//  GYProgressView.h
//  GYProgressViewDemo
//
//  Created by GuoRoy on 15/11/11.
//  Copyright © 2015年 GuoRoy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GYProgressView : UIView
//进度条的颜色
@property (nonatomic, strong) UIColor * barColor;
//进度条边框颜色，默认宽度为1.0f
@property (nonatomic, strong) UIColor * borderColor;
//当前进度条的进度
@property (nonatomic, assign) float progress;
//进度条变量 imageView
@property (nonatomic, strong) UIImageView * subProgressView;
//设置进度条的自定义图片
@property (nonatomic, strong) UIImage * barImage;

//设置进度条的进度
-(void)setProgress:(float)progress animated:(BOOL)animated;
@end
