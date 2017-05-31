//
//  InputSingletonViewController.m
//  valuePassSet
//
//  Created by hooyking on 2017/5/31.
//  Copyright © 2017年 hooyking. All rights reserved.
//

#import "InputSingletonViewController.h"
#import "Value.h"

@interface InputSingletonViewController ()

@end

@implementation InputSingletonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchDown];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)buttonClicked {
    [Value sharedValue].text = self.textField.text;
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
