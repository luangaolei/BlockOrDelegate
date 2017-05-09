//
//  ViewController.m
//  反向代理
//
//  Created by xyqm on 16/12/2.
//  Copyright © 2016年 栾高垒. All rights reserved.
//

#import "ViewController.h"
#import "TwoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.tag = 100;
    button.frame = CGRectMake(0, 0, 100, 100);
    button.backgroundColor = [UIColor orangeColor];
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

}


- (void)push{
    TwoViewController *two = [[TwoViewController alloc]init];
    //步骤5
    two.delegate = self;
    [self.navigationController pushViewController:two animated:YES];
}

//步骤6
- (void)changeButtonColor:(UIColor *)color{
    UIButton *button = (UIButton *)[self.view viewWithTag:100];
    button.backgroundColor = color;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
