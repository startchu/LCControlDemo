//
//  LCStarRatingViewController.m
//  LCControlDemo
//
//  Created by cc on 14-10-30.
//  Copyright (c) 2014年 linkage. All rights reserved.
//

#import "LCStarRatingViewController.h"

@interface LCStarRatingViewController ()
{
    IBOutlet LCStarRatingView *ratingView;
}
@end

@implementation LCStarRatingViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"LCStarRatingView";
    
    
    LCStarRatingView *starview = [[LCStarRatingView alloc] initWithFrame:CGRectMake(40, 100, 50, 40) image:[UIImage imageNamed:@"star_nomal.png"] highlightedImage:[UIImage imageNamed:@"star_highlight.png"]  maxRating:5];
    starview.rating = 1;
    [self.view addSubview:starview];
    
    LCStarRatingView *starview2 = [[LCStarRatingView alloc] init];
    starview2.image = [UIImage imageNamed:@"star_nomal.png"];
    starview2.highlightedImage = [UIImage imageNamed:@"star_highlight.png"];
    //    starview2.maxRating = 5;
    starview2.rating = 4;
    starview2.allowTouchToRating = YES;
    starview2.allowHalfRating = YES;
    starview2.frame = CGRectMake(40, 150, 50, 40);
    [self.view addSubview:starview2];
    
    LCStarRatingView *starview3 = [[LCStarRatingView alloc] initWithFrame:CGRectMake(40, 200, 50, 40)];
    starview3.image = [UIImage imageNamed:@"star_nomal.png"];
    starview3.highlightedImage = [UIImage imageNamed:@"star_highlight.png"];
    starview3.maxRating = 10;
    starview3.allowTouchToRating = YES;
    starview3.allowHalfRating = NO;
    [self.view addSubview:starview3];
    
    //init from xib
    ratingView.image = [UIImage imageNamed:@"star_nomal.png"];
    ratingView.highlightedImage = [UIImage imageNamed:@"star_highlight.png"];
    ratingView.maxRating = 3;
    ratingView.rating = 3;
    ratingView.allowHalfRating = YES;
    ratingView.allowTouchToRating = YES;
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
