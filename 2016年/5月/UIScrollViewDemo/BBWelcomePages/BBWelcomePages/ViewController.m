//
//  ViewController.m
//  BBWelcomePages
//
//  Created by Biao on 16/5/5.
//  Copyright © 2016年 Biao. All rights reserved.
//

#import "ViewController.h"

#define JBcount 7
#define Zero 0
#define Width self.view.bounds.size.width
#define Height self.view.bounds.size.height

@interface ViewController ()<UIScrollViewDelegate>

@property(nonatomic,strong)UIScrollView *scrollView;
@property(nonatomic,strong)UIPageControl *pageController;

@end

@implementation ViewController

/**
 *  @author Biao
 *
 *  懒加载
 */
- (UIScrollView *)scrollView
{
    if(!_scrollView)
    {
        //设置宽高比
        _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(Zero, Zero, Width, Height)];
        
        //设置contentSize height==0 禁止垂直方向滚动
        _scrollView.contentSize = CGSizeMake(JBcount * Width, Zero);
        _scrollView.pagingEnabled = YES;
        _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.showsVerticalScrollIndicator = NO;
        //设置代理
        _scrollView.delegate = self;
        [self.view addSubview:_scrollView];
        
        /**
         *  @author Biao
         *
         *  设置图片,注意图片并行排列,x的值改变
         */
        for(int i=0;i<JBcount;i++)
        {
            //初始化imageView
            UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(i * Width, Zero, Width, Height)];
            imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i+1]];
            [_scrollView addSubview:imageView];
            
        }
    }
    return _scrollView;
}

- (UIPageControl *)pageController
{
    if(!_pageController)
    {
        //初始化page
        _pageController = [[UIPageControl alloc]initWithFrame:CGRectMake((Width - 200) * 0.5, Height - 30, 200, 5)];
        
        //一共显示多少个点点(现对应多少页)
        _pageController.numberOfPages = JBcount;
        
        //设置选中页的圆点颜色和非选中颜色
        _pageController.currentPageIndicatorTintColor = [UIColor magentaColor];
        _pageController.pageIndicatorTintColor = [UIColor whiteColor];
        
        [self.view addSubview:_pageController];
    }
    return _pageController;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.scrollView.hidden = NO;
    self.pageController.hidden = NO;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    int index = self.scrollView.contentOffset.x / Width;
    //设置页码
    self.pageController.currentPage = index;
}

@end
