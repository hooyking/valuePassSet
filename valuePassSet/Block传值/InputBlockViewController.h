//
//  InputBlockViewController.h
//  valuePassSet
//
//  Created by hooyking on 2017/5/31.
//  Copyright © 2017年 hooyking. All rights reserved.
//

#import "InputBaseViewController.h"

typedef void(^MyBlock)(NSString *text);

@interface InputBlockViewController : InputBaseViewController

@property (nonatomic, copy) MyBlock block;

- (void)returnText:(MyBlock)block;

@end

