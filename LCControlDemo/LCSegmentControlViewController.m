//
//  LCSegmentControlViewController.m
//  LCControlDemo
//
//  Created by cc on 14-10-30.
//  Copyright (c) 2014年 linkage. All rights reserved.
//

#import "LCSegmentControlViewController.h"

@interface LCSegmentControlViewController ()
{
    IBOutlet LCSegmentControl *_segmentControl;
}
@end

@implementation LCSegmentControlViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _segmentControl.slideAnimation = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
