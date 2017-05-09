//
//  TwoViewController.h
//  Block正向
//
//  Created by xyqm on 16/12/2.
//  Copyright © 2016年 栾高垒. All rights reserved.
//

#import <UIKit/UIKit.h>


//               block声明                //


//步骤1
typedef void(^TwoBlockToOneFunc2)(UIColor *color);
typedef void(^MyBlock)(NSString *str1, NSString *str2);//block方法传值的话,这里要加上参数名称

@interface TwoViewController : UIViewController

//步骤1
- (void)changeViewColor:(TwoBlockToOneFunc2) block;
- (void)changeButtonTitle:(MyBlock)block;

@end
