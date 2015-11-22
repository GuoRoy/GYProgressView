//
//  GYProgressView.h
//  GYProgressViewDemo
//
//  Created by GuoRoy on 15/11/11.
//  Copyright © 2015年 GuoRoy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GYProgressView : UIView

@property (nonatomic, strong) UIColor * barColor;
@property (nonatomic, strong) UIColor * borderColor;
@property (nonatomic, assign) float progress;
@property (nonatomic, strong) UIImageView * subProgressView;
@property (nonatomic, strong) UIImage * barImage;

-(void)setProgress:(float)progress animated:(BOOL)animated;
@end
