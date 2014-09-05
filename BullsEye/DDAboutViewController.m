//
//  DDAboutViewController.m
//  BullsEye
//
//  Created by Dani Demas on 9/4/14.
//  Copyright (c) 2014 Dani Demas. All rights reserved.
//

#import "DDAboutViewController.h"

@interface DDAboutViewController ()

@end

@implementation DDAboutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *htmlFile = [[NSBundle mainBundle]
                          pathForResource:@"BullsEye" ofType:@"html"];
    NSData *htmlData = [NSData dataWithContentsOfFile:htmlFile];
    NSURL *baseURL = [NSURL fileURLWithPath:[
                                             [NSBundle mainBundle] bundlePath]];
    
    [self.webView loadData:htmlData MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:baseURL];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (IBAction)close {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

@end
