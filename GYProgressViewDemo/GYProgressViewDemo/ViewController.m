//
//  ViewController.m
//  GYProgressViewDemo
//
//  Created by GuoRoy on 15/11/22.
//  Copyright © 2015年 GuoRoy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    GYProgressView * _cornerProgressView;
    GYProgressView * _cornerBorderProgressView;
}

@end


#define SCREENRECT [UIScreen mainScreen].bounds

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_progressView setProgress:0.5f];
    
    [_sampleProgressView setProgress:0.5f];
    [_sampleProgressView setBorderColor:[UIColor blueColor]];
    [_sampleProgressView setBarColor:[UIColor blueColor]];
    
    [_sampleImageProgressView setProgress:0.5f];
    [_sampleImageProgressView setBarImage:[UIImage imageNamed:@"progressBg"]];
    
    _cornerProgressView = [GYProgressView new];
    [_cornerProgressView setFrame:CGRectMake(10, 150, SCREENRECT.size.width - 20, 17)];
    [_cornerProgressView setBackgroundColor:[UIColor blackColor]];
    [_cornerProgressView setBarColor:[UIColor redColor]];
    [_cornerProgressView.layer setCornerRadius:_cornerProgressView.frame.size.height/2];
    [self.view addSubview: _cornerProgressView];
    
    [_cornerProgressView setProgress:0.5f animated:YES];
    
    
    _cornerBorderProgressView = [GYProgressView new];
    [_cornerBorderProgressView setFrame:CGRectMake(10, 180, SCREENRECT.size.width - 20, 17)];
    [_cornerBorderProgressView setBorderColor:[UIColor redColor]];
    [_cornerBorderProgressView setBarColor:[UIColor redColor]];
    [_cornerBorderProgressView.layer setCornerRadius:_cornerBorderProgressView.frame.size.height/2];
    [self.view addSubview: _cornerBorderProgressView];
    [_cornerBorderProgressView setProgress:0.5f animated:YES];
    
    
    [_stepper setMinimumValue:0];
    [_stepper setMaximumValue:10];
    [_stepper setStepValue:1];
    _stepper.value = 1;
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)changeValue:(UIStepper *)sender
{
    float value = sender.value/10.0f;
    
    [_progressView setProgress:value animated:YES];
    [_cornerProgressView setProgress:value animated:YES];
    [_sampleProgressView setProgress:value animated:YES];
    [_sampleImageProgressView setProgress:value animated:YES];
    [_cornerBorderProgressView setProgress:value animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
