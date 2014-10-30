//
//  LCCountDownViewController.m
//  LCControlDemo
//
//  Created by cc on 14-10-30.
//  Copyright (c) 2014年 linkage. All rights reserved.
//

#import "LCCountDownViewController.h"

@interface LCCountDownViewController ()
{
    IBOutlet LCCountDownButton *_countDownButton;
}
@end

@implementation LCCountDownViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"LCCountDownButton";
    _countDownButton.timeOut = 10;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)countDownAction:(id)sender
{
    //开始计时
    [_countDownButton beginCountDown];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
