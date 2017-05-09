//
//  TwoViewController.h
//  正向代理
//
//  Created by xyqm on 16/12/2.
//  Copyright © 2016年 栾高垒. All rights reserved.
//

#import <UIKit/UIKit.h>

//步骤4
#import "ViewController.h"

//步骤5
@interface TwoViewController : UIViewController<OneToTwoDelegate>//正向代理 遵循上一个页面的代理要写在.h文件中

@end
