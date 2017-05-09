//
//  ViewController.h
//  反向代理
//
//  Created by xyqm on 16/12/2.
//  Copyright © 2016年 栾高垒. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TwoViewController.h"



/*
 代理反向传值：
 步骤1、第二个页面声明一个代理
 步骤2、第二个页面声明一个代理的指针
 步骤3、第二个页面调用协议里面的方法
 步骤4、第一个页面遵循第二个页面的协议
 步骤5、第一个页面的点击事件里面将第一个页面作为第二个页面的代理人
 步骤6、第一个页面实现第二个页面协议里面的方法
 */


@interface ViewController : UIViewController<TwoToOneDelegate>//步骤4


@end

