
/*!
 @header RecommendViewController.m
 
 @abstract  作者Github地址：https://github.com/zhengwenming
            作者CSDN博客地址:http://blog.csdn.net/wenmingzheng
 
 @author   Created by zhengwenming on  16/3/13
 
 @version 1.00 16/3/13 Creation(版本信息)
 
   Copyright © 2016年 zhengwenming. All rights reserved.
 */

#import "RecommendViewController.h"
#import "DetailViewController.h"

@interface RecommendViewController ()

@end

@implementation RecommendViewController

- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor brownColor];

    [super viewDidLoad];
    UILabel *aLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 0, self.view.frame.size.width-20*2, 40)];
    aLabel.text = @"我是推荐，点击push到detailVC";
    aLabel.center = self.view.center;
    aLabel.backgroundColor = [UIColor magentaColor];
    aLabel.textAlignment =NSTextAlignmentCenter;
    [self.view addSubview:aLabel];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(showDetailViewController:)];
    aLabel.userInteractionEnabled = YES;
    [aLabel addGestureRecognizer:tap];
}
-(void)showDetailViewController:(UITapGestureRecognizer *)sender{
    [self.navigationController pushViewController:[DetailViewController new] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)dealloc{
    NSLog(@"%s dealloc",object_getClassName(self));
}

@end
