//
//  TwoViewController.h
//  反向代理
//
//  Created by xyqm on 16/12/2.
//  Copyright © 2016年 栾高垒. All rights reserved.
//

#import <UIKit/UIKit.h>

//步骤1
@protocol TwoToOneDelegate <NSObject>

- (void)changeButtonColor:(UIColor *)color;

@end

@interface TwoViewController : UIViewController

//步骤2
@property (assign, nonatomic) id<TwoToOneDelegate> delegate;

@end
