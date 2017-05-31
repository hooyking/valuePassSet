//
//  InputDelegateViewController.m
//  valuePassSet
//
//  Created by hooyking on 2017/5/31.
//  Copyright © 2017年 hooyking. All rights reserved.
//

#import "InputDelegateViewController.h"

@interface InputDelegateViewController ()

@end

@implementation InputDelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchDown];
}

- (void)buttonClicked {
    if ([self.delegate respondsToSelector:@selector(delegateReturnText:)]) {
        [self.delegate delegateReturnText:self.textField.text];
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
