//
//  ViewController.m
//  OrientationDemo
//
//  Created by metthew on 2017/2/28.
//  Copyright © 2017年 metthew. All rights reserved.
//

#import "ViewController.h"
#import "testViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)btnClick
{
    [self presentViewController:[[testViewController alloc]init] animated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
