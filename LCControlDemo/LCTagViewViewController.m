//
//  LCTagViewViewController.m
//  LCControlDemo
//
//  Created by cc on 14-10-30.
//  Copyright (c) 2014年 linkage. All rights reserved.
//

#import "LCTagViewViewController.h"

@interface LCTagViewViewController ()
{
    IBOutlet LCTagView *_tagView;
}
@end

@implementation LCTagViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    TagAttribute *attr = [[TagAttribute alloc] init];
    attr.textBackgroundColor = [UIColor clearColor];
    attr.textColor = [UIColor colorWithRed:0.0 green:144.0/255.0 blue:1.0 alpha:1.0];
    attr.textFont = [UIFont systemFontOfSize:12.0];
    attr.borderDisplay = YES;
    attr.borderColor = [UIColor colorWithRed:140.0/255.0 green:204.0/255.0 blue:1.0 alpha:1.0];
    attr.horizotalPadding = 3.0;
    _tagView.tagAttribute = attr;
    

    _tagView.tags = @[@"自驾游",@"爱吹牛",@"90后",@"王菲",@"爱我别走，如果你说",@"喜欢陶喆",@"发如雪，凄美"];
    [_tagView displayTags];
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
