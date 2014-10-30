//
//  ViewController.m
//  LCControlDemo
//
//  Created by cc on 14-10-29.
//  Copyright (c) 2014年 linkage. All rights reserved.
//

#import "ViewController.h"
#import "LCPageControlViewController.h"
#import "LCCountDownViewController.h"
#import "LCPlaceHolderTextViewController.h"
#import "LCStarRatingViewController.h"
#import "LCTagViewViewController.h"
#import "LCMarqueeLabelViewController.h"
#import "LCSegmentControlViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UITableView *_tableView;
    NSArray *_tableDatas;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"LCLibrary控件Demo";
    
    _tableDatas = @[@"LCPageControl",@"LCCountDown",@"LCPlaceHolderTextView",@"LCStarRatingView",@"LCMarqueeLabel",@"LCTagView",@"LCSegmentControl"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _tableDatas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    cell.textLabel.text = [_tableDatas objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
        {
            LCPageControlViewController *vc = [[LCPageControlViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 1:
        {
            LCCountDownViewController *vc = [[LCCountDownViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 2:
        {
            LCPlaceHolderTextViewController *vc = [[LCPlaceHolderTextViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 3:
        {
            LCStarRatingViewController *vc = [[LCStarRatingViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 4:
        {
            LCMarqueeLabelViewController *vc = [[LCMarqueeLabelViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 5:
        {
            LCTagViewViewController *vc = [[LCTagViewViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 6:
        {
            LCSegmentControlViewController *vc = [[LCSegmentControlViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        default:
            break;
    }
}
@end
