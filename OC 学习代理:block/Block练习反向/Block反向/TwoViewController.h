//
//  TwoViewController.h
//  Block反向
//
//  Created by xyqm on 16/12/2.
//  Copyright © 2016年 栾高垒. All rights reserved.
//

#import <UIKit/UIKit.h>


//               block声明                //


//步骤1
typedef void(^TwoBlockToOneFunc1)(UIColor *);
typedef void(^SecondBlock)(NSString *str);

@interface TwoViewController : UIViewController

//步骤1
@property (copy, nonatomic) TwoBlockToOneFunc1 block;

- (void)getString:(SecondBlock) block;

@end
