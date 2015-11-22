//
//  GYProgressView.m
//  GYProgressViewDemo
//
//  Created by GuoRoy on 15/11/11.
//  Copyright © 2015年 GuoRoy. All rights reserved.
//

#import "GYProgressView.h"

@interface GYProgressView()
{

}
@end

@implementation GYProgressView

-(void)setProgress:(float)progress
{
    [self setProgress:progress animated:YES];
}

-(void)setProgress:(float)progress animated:(BOOL)animated
{
    _progress = progress;
    
    if (_subProgressView == nil)
    {
        _subProgressView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0,0, self.frame.size.height)];
        [_subProgressView setContentMode:UIViewContentModeScaleToFill];
        if (_barColor)
        {
            [_subProgressView setBackgroundColor:_barColor];
        }
        else
        {
            [_subProgressView setBackgroundColor:[UIColor grayColor]];
        }
        _subProgressView.layer.cornerRadius = self.layer.cornerRadius;
        [self addSubview:_subProgressView];
    }
    
    CGRect rect = _subProgressView.frame;
    rect.size.width = self.frame.size.width * _progress;
    
    if (animated)
    {
        [UIView beginAnimations:@"TransationAnimation" context:NULL];
        [UIView setAnimationDuration:0.5];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationDelegate:self];
        _subProgressView.frame = rect;
        [UIView commitAnimations];
    }
    else
    {
        _subProgressView.frame = rect;
    }

}


- (void)setBarImage:(UIImage *)barImage
{
    _barImage = barImage;
    if (_subProgressView)
    {
        [_subProgressView setImage:barImage];
        [_subProgressView layoutIfNeeded];
    }
}

- (void)setBarColor:(UIColor *)barColor
{
    _barColor = barColor;
    if (_subProgressView)
    {
        [_subProgressView setBackgroundColor:barColor];
        [_subProgressView layoutIfNeeded];
    }
}

- (void)setBorderColor:(UIColor *)borderColor
{
    _borderColor = borderColor;
    [self.layer setBorderColor:borderColor.CGColor];
    [self.layer setBorderWidth:1.0f];
    [self layoutIfNeeded];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
