//
//  AttributeViewController.m
//  valuePassSet
//
//  Created by hooyking on 2017/5/31.
//  Copyright © 2017年 hooyking. All rights reserved.
//

#import "AttributeViewController.h"
#import "AttributeOutputViewController.h"

@interface AttributeViewController ()

@end

@implementation AttributeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchDown];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)buttonClicked {
    AttributeOutputViewController *outputVC = [[AttributeOutputViewController alloc] init];
    outputVC.outputLable.text = self.textField.text;
    [self.navigationController pushViewController:outputVC animated:YES];
}

@end
