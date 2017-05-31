//
//  InputBlockViewController.m
//  valuePassSet
//
//  Created by hooyking on 2017/5/31.
//  Copyright © 2017年 hooyking. All rights reserved.
//

#import "InputBlockViewController.h"

@interface InputBlockViewController ()

@end

@implementation InputBlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchDown];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)buttonClicked {
    if (_block) {
        _block(self.textField.text);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)returnText:(MyBlock)block {
    _block = block;
}

@end
