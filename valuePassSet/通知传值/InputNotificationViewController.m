//
//  InputNotificationViewController.m
//  valuePassSet
//
//  Created by hooyking on 2017/5/31.
//  Copyright © 2017年 hooyking. All rights reserved.
//

#import "InputNotificationViewController.h"

@interface InputNotificationViewController ()

@end

@implementation InputNotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchDown];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)buttonClicked {
    //这儿object和userInfo都放入要传的东西，object这儿为任意对象，userInfo里必须为字典
    [[NSNotificationCenter defaultCenter] postNotificationName:@"notification" object:self.textField.text userInfo:@{@"name":@"xiaoming"}];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
