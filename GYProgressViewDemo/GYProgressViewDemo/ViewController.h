//
//  ViewController.h
//  GYProgressViewDemo
//
//  Created by GuoRoy on 15/11/22.
//  Copyright © 2015年 GuoRoy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GYProgressView.h"
@interface ViewController : UIViewController

@property (nonatomic,weak) IBOutlet GYProgressView * progressView;
@property (nonatomic,weak) IBOutlet GYProgressView * sampleProgressView;
@property (nonatomic,weak) IBOutlet GYProgressView * sampleImageProgressView;
@property (nonatomic,weak) IBOutlet UIStepper * stepper;

@end

