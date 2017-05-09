//
//  ViewController.m
//  Block反向
//
//  Created by xyqm on 16/12/2.
//  Copyright © 2016年 栾高垒. All rights reserved.
//

#import "ViewController.h"
#import "TwoViewController.h"

@interface ViewController (){
    UIButton *button;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 100, 100, 100);
    button.backgroundColor = [UIColor orangeColor];
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
- (void)push{
    TwoViewController *two = [[TwoViewController alloc]init];
    
    two.block = ^(UIColor *color){
        button.backgroundColor = color;
    };
    
    [two getString:^(NSString *str) {
        [button setTitle:str forState:UIControlStateNormal];
    }];
    
    [self.navigationController pushViewController:two animated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
