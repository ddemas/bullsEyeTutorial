//
//  DDViewController.h
//  BullsEye
//
//  Created by Dani Demas on 9/3/14.
//  Copyright (c) 2014 Dani Demas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DDViewController : UIViewController

@property (nonatomic,weak) IBOutlet UISlider *slider;

- (IBAction)showAlert;

- (IBAction)sliderMoved:(UISlider *)slider;

@end
