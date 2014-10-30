//
//  LCMarqueeLabelViewController.m
//  LCControlDemo
//
//  Created by cc on 14-10-30.
//  Copyright (c) 2014年 linkage. All rights reserved.
//

#import "LCMarqueeLabelViewController.h"

@interface LCMarqueeLabelViewController ()
{
    IBOutlet LCMarqueeLabel *_label;
}
@end

@implementation LCMarqueeLabelViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"LCMarqueeLabel";
    
    [_label setText:@"你发如雪 凄美了离别 我焚香感动了谁 邀明月 让回忆皎洁 爱在月光下完美"];
    _label.backgroundColor = [UIColor clearColor];
    _label.subLabel.backgroundColor = [UIColor clearColor];
    _label.subLabel.textColor = [UIColor redColor];
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
