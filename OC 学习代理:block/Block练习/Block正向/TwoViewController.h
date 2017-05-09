//
//  TwoViewController.h
//  Block正向
//
//  Created by xyqm on 16/12/2.
//  Copyright © 2016年 栾高垒. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^MyBlock)(NSString *str1, NSString *str2);

@interface TwoViewController : UIViewController

- (void)changeButtonTitle:(MyBlock)block;

@end
