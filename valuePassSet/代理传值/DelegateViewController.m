//
//  DelegateViewController.m
//  valuePassSet
//
//  Created by hooyking on 2017/5/31.
//  Copyright © 2017年 hooyking. All rights reserved.
//

#import "DelegateViewController.h"
#import "InputDelegateViewController.h"

@interface DelegateViewController () <HKDelegate>

@end

@implementation DelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.nextButton addTarget:self action:@selector(nextButtonClicked) forControlEvents:UIControlEventTouchDown];
}

- (void)nextButtonClicked {
    InputDelegateViewController *inputDVC = [[InputDelegateViewController alloc] init];
    inputDVC.delegate = self;
    [self presentViewController:inputDVC animated:YES completion:nil];
}

- (void)delegateReturnText:(NSString *)text {
    self.outputLable.text = text;
}

@end
