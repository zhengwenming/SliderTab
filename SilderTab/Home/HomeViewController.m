/*!
 @header HomeViewController.m
 
 @abstract  作者Github地址：https://github.com/zhengwenming
            作者CSDN博客地址:http://blog.csdn.net/wenmingzheng
 
 @author   Created by zhengwenming on  16/3/13
 
 @version 1.00 16/3/13 Creation(版本信息)
 
   Copyright © 2016年 zhengwenming. All rights reserved.
 */

#import "HomeViewController.h"
#import "ContainerViewController.h"
@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"";
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, self.view.frame.size.width/2, 50);
    [button setTitle:@"点击测试导航tab" forState:UIControlStateNormal];
    [button setTitle:@"点击测试导航tab" forState:UIControlStateSelected];
    button.center = self.view.center;
    [button addTarget:self action:@selector(testNavTab:) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:button];
    self.navigationController.navigationBar.translucent = NO;

}

-(void)testNavTab:(UIButton *)sender{
    [self.navigationController pushViewController:[ContainerViewController new] animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
