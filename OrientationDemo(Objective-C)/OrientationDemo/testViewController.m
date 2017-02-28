//
//  testViewController.m
//  OrientationDemo
//
//  Created by metthew on 2017/2/28.
//  Copyright © 2017年 metthew. All rights reserved.
//

#import "AppDelegate.h"
#import "testViewController.h"

@interface testViewController ()

@end

@implementation testViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate setRotationTrue];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //设置设备横屏
    [[UIDevice currentDevice]setValue:[NSNumber numberWithInteger:UIInterfaceOrientationMaskLandscapeRight] forKey:@"orientation"];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
//    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
//    [appDelegate setRotationFalse];
//    //设置设备竖屏
//    [[UIDevice currentDevice]setValue:[NSNumber numberWithInteger:UIInterfaceOrientationMaskPortrait] forKey:@"orientation"];

    
}

- (void)btnClick
{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate setRotationFalse];
    //设置设备竖屏
    [[UIDevice currentDevice]setValue:[NSNumber numberWithInteger:UIInterfaceOrientationMaskPortrait] forKey:@"orientation"];

    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (BOOL)shouldAutorotate
{
    return NO;
}


@end
