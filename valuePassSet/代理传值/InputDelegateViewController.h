//
//  InputDelegateViewController.h
//  valuePassSet
//
//  Created by hooyking on 2017/5/31.
//  Copyright © 2017年 hooyking. All rights reserved.
//


#import "InputBaseViewController.h"

@protocol HKDelegate <NSObject>

- (void)delegateReturnText:(NSString *)text;

@end

@interface InputDelegateViewController : InputBaseViewController

@property (nonatomic, weak) id<HKDelegate> delegate;

@end
