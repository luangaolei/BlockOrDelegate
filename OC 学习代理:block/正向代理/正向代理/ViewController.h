//
//  ViewController.h
//  正向代理
//
//  Created by xyqm on 16/12/2.
//  Copyright © 2016年 栾高垒. All rights reserved.
//

#import <UIKit/UIKit.h>


/*
 代理正向传值：
 步骤1、第一个页面声明一个代理
 步骤2、第一个页面声明一个代理的指针
 步骤3、第一个页面的点击事件里面将第二个页面作为第一个页面的代理人
 步骤4、第二个页面的.h文件包含第一个页面的.h文件
 步骤5、第二个页面遵循第一个页面的协议
 步骤6、第二个页面实现第一个页面协议里面的方法
 */


//步骤1
@protocol OneToTwoDelegate <NSObject>

- (void)changeColorwithColor:(UIColor *)color;

@end

@interface ViewController : UIViewController

//步骤2
@property (assign, nonatomic) id<OneToTwoDelegate> delegate;

@end

