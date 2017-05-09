//
//  ViewController.m
//  Block反向
//
//  Created by xyqm on 16/12/2.
//  Copyright © 2016年 栾高垒. All rights reserved.
//

#import "ViewController.h"
#import "TwoViewController.h"




//////////      Block: 声明 — 实现 — 调用



//属性block
/*
 1.首先在委托方页面创建block
 typedef void (^myBlock)(NSString *str);
 @property(copy, nonatomic) myBlock block;
 
 2.到委托方页面里，在pop回前一页的按钮点击事件里给block赋值,进行传值
 self.block(@”qwert”);
 
 3.然后再代理方页面,做类似给block创建代理关系的操作,一般都在按钮点击事件,push到委托方（下一页）的操作那里
 委托方对象.block = ^(NSString *str){
	NSLog(@“%@“, str);//第二步的时候不走这里面的操作(NSLog不执行)
 };
 
 
 4.再回到委托方页面,将block传过来的值进行第2步的打印操作
 NSLog(@“%@“, str);
 */



@interface ViewController (){
    UIButton *button;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 100, 100);
    button.backgroundColor = [UIColor orangeColor];
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
- (void)push{
    TwoViewController *two = [[TwoViewController alloc]init];
    
    
    
    //               block调用                //
    
    
    
    //步骤3
    two.block = ^(UIColor *color){
        //步骤4
        button.backgroundColor = color;
    };
    
    
    [self.navigationController pushViewController:two animated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
