//
//  DDViewController.m
//  BullsEye
//
//  Created by Dani Demas on 9/3/14.
//  Copyright (c) 2014 Dani Demas. All rights reserved.
//

#import "DDViewController.h"

@interface DDViewController ()

@end

@implementation DDViewController
{
    int _currentValue;
    int _targetValue;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self startNewRound];
    [self updateLabels];
}

- (void)startNewRound
{
    _currentValue = 50;
    self.slider.value = _currentValue;
    _targetValue = 1 + arc4random_uniform(100);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAlert
{
    NSString *message = [NSString stringWithFormat:
      @"The value of the slider is: %d\n The target value is: %d",
      _currentValue, _targetValue];
    
    UIAlertView *alertView = [[UIAlertView alloc]
      initWithTitle:@"Hello World!"
      message:message
      delegate:nil
      cancelButtonTitle:@"Awesome"
      otherButtonTitles:nil];
    
    [alertView show];
    
    [self startNewRound];
    [self updateLabels];
}

- (IBAction)sliderMoved:(UISlider *)slider
{
    _currentValue = lroundf(slider.value);
}

- (void)updateLabels
{
    self.targetLabel.text = [NSString stringWithFormat:@"%d", _targetValue];
}

@end
