//
//  LCPlaceHolderTextViewController.m
//  LCControlDemo
//
//  Created by cc on 14-10-30.
//  Copyright (c) 2014年 linkage. All rights reserved.
//

#import "LCPlaceHolderTextViewController.h"

@interface LCPlaceHolderTextViewController ()<UITextViewDelegate>
{
    IBOutlet LCPlaceHolderTextView *_textView;
}
@end

@implementation LCPlaceHolderTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"LCPlaceHolderTextView";
    
    _textView.placeholder = @"请输入你想说的话...";
    _textView.placeholderColor = [UIColor redColor];
//    _textView.placeHolderTextAlignment = NSTextAlignmentCenter;
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
