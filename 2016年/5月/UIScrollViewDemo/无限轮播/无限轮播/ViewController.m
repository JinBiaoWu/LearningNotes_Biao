//
//  ViewController.m
//  无限轮播
//
//  Created by Biao on 16/5/5.
//  Copyright © 2016年 Biao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong , nonatomic) UIPageControl *page;

/**
 *  @author Biao
 *
 *  定时器
 */
@property(nonatomic,strong)NSTimer *timer;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**
     *  @author Biao
     *
     *  图片的宽度
     */
    CGFloat imageW  = self.view.bounds.size.width;
    
    /**
     *  @author Biao
     *
     *  图片的高度
     */
    CGFloat imageH = 260;
    
    /**
     *  @author Biao
     *
     *  图片的Y轴
     */
    CGFloat imageY = 0;
    
    /**
     *  @author Biao
     *
     *  图片总数
     */
    NSInteger totalCount = 5;
    
    
    for(int i=0;i<totalCount;i++)
    {
        UIImageView *imageView = [[UIImageView alloc]init];
        
        /**
         *  @author Biao
         *
         *  图片X轴
         */
        CGFloat imageX = i * imageW;
        
        /**
         *  @author Biao
         *
         *  图片frame
         */
        imageView.frame = CGRectMake(imageX, imageY, imageW, imageH);
        
        
        /**
         *  @author Biao
         *
         *  设置图片
         */
        NSString *name = [NSString stringWithFormat:@"0%d.jpg",i+1];
        imageView.image = [UIImage imageNamed:name];
        
        /**
         *  @author Biao
         *
         *  隐藏指示条
         */
        self.scrollView.showsHorizontalScrollIndicator = NO;
        
        [self.scrollView addSubview:imageView];
    }
    
    /**
     *  @author Biao
     *
     *  设置scrollView的滚动范围
     */
    CGFloat contentW = totalCount * imageW;
    
    /**
     *  @author Biao
     *
     *  不允许在垂直方向上进行滚动
     */
    self.scrollView.contentSize = CGSizeMake(contentW, 0);
    
    
    /**
     *  @author Biao
     *
     *  设置分页
     */
    self.scrollView.pagingEnabled = YES;
    
    /**
     *  @author Biao
     *
     *  监听scrollView的滚动
     */
    self.scrollView.delegate = self;

    self.page = [[UIPageControl alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/2 - 100, self.scrollView.bounds.size.height+self.scrollView.frame.origin.y -50 , 200, 30)];
    self.page.numberOfPages = totalCount;
    
    self.page.pageIndicatorTintColor = [UIColor blueColor];
    self.page.currentPageIndicatorTintColor = [UIColor redColor];

    [self.view addSubview:self.page];
    
    [self addTimer];
    
}

/**
 *  @author Biao
 *
 *  下一张图片
 */
- (void)nextImage
{
    int page = (int)self.page.currentPage;
    
    if(page == 4)
    {
        page = 0;
    }
    else
    {
        page++;
    }
    
    /**
     *  @author Biao
     *
     *  滚动scrollView
     */
    CGFloat x = page * self.view.bounds.size.width;
    self.scrollView.contentOffset = CGPointMake(x, 0);
}

/**
 *  @author Biao
 *
 *  scrollView滚动的时候调用
 */
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"滚动中...");
    /**
     *  @author Biao
     *
     *  计算页码
     *
     *  @return 页码 = (contentoffset.x + scrollView一半宽度)/scrollView宽度
     */
    CGFloat scrollViewW = scrollView.frame.size.width;
    CGFloat x = scrollView.contentOffset.x;
    int page = (x + scrollViewW / 2) / scrollViewW;
    self.page.currentPage = page;
}

/**
 *  @author Biao
 *
 *  开始拖拽的时候调用
 */
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    /**
     *  @author Biao
     *
     *  关闭定时器(注意点:定时器一旦被关闭,无法再开启)
     */
//    [self.timer invalidate];
    [self removeTimer];

}


- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{

    /**
     *  @author Biao
     *
     *  开启定时器
     */
    [self addTimer];
}


/**
 *  @author Biao
 *
 *  关闭定时器
 */
- (void)removeTimer
{
    [self.timer invalidate];
}

/**
 *  @author Biao
 *
 *  定时器NSTimer
 
 定时器 适合用来隔一段时间做一些间隔比较长的操作
 
 NSTimeInterval:多长多件操作一次
 
 target :操作谁
 
 selector : 要操作的方法
 
 userInfo: 传递参数
 
 repeats: 是否重复
 
 self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
 
 */
- (void)addTimer
{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
}

@end
