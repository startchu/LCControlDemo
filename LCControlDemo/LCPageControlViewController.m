//
//  LCPageControlViewController.m
//  LCControlDemo
//
//  Created by cc on 14-10-29.
//  Copyright (c) 2014年 linkage. All rights reserved.
//

#import "LCPageControlViewController.h"

@interface LCPageControlViewController ()<UIScrollViewDelegate>
{
    IBOutlet LCPageControl *_pageControlOne;
    IBOutlet LCPageControl *_pageControlTwo;
    IBOutlet LCPageControl *_pageControlThree;
    IBOutlet UIScrollView *_scrollViewThree;
}
@end

@implementation LCPageControlViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"LCPageControl";
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    _pageControlOne.numberOfPages = 5;
    [_pageControlOne setOffColor: [UIColor  whiteColor]];
    [_pageControlOne setOnColor: [UIColor redColor]];
    [_pageControlOne setIndicatorDiameter: 7.0f] ;
    [_pageControlOne setIndicatorSpace: 12.0f] ;
    
    
    _pageControlTwo.numberOfPages = 5;
    _pageControlTwo.fillColorType = FillColorTypeON_full_OFF_empty;
    [_pageControlTwo setOffColor: [UIColor  whiteColor]];
    [_pageControlTwo setOnColor: [UIColor purpleColor]];
    [_pageControlTwo setIndicatorDiameter: 9.0f] ;
    [_pageControlTwo setIndicatorSpace: 15.0f] ;
    [_pageControlTwo setCurrentPage:1];
    
    
    for (int i=0; i<4; i++) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(i*_scrollViewThree.frame.size.width, 0, _scrollViewThree.frame.size.width, _scrollViewThree.frame.size.height)];
        view.backgroundColor = [self testColor:i];
        [_scrollViewThree addSubview:view];
    }
    _scrollViewThree.contentSize = CGSizeMake(_scrollViewThree.frame.size.width*4, _scrollViewThree.frame.size.height);
    
    _pageControlThree.numberOfPages = 4;
    _pageControlThree.type = LCPageControlTypeImagesSingleState;
    NSMutableArray *images = [NSMutableArray arrayWithCapacity:5];
    for (int i=0; i<4; i++) {
        [images addObject:[UIImage imageNamed:[NSString stringWithFormat:@"page_%d.png",i+1]]];
    }
    _pageControlThree.images = images;
}

-(UIColor*)testColor:(NSInteger)index
{
    NSArray *color = @[[UIColor orangeColor],[UIColor redColor],[UIColor yellowColor],[UIColor greenColor]];
    return [color objectAtIndex:index];
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGPoint p = scrollView.contentOffset;
    NSInteger page = p.x / scrollView.frame.size.width;
    _pageControlThree.currentPage = page;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
