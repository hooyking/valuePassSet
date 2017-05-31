//
//  SingletonViewController.m
//  valuePassSet
//
//  Created by hooyking on 2017/5/31.
//  Copyright © 2017年 hooyking. All rights reserved.
//

#import "SingletonViewController.h"
#import "InputSingletonViewController.h"
#import "Value.h"

@interface SingletonViewController ()

@end

@implementation SingletonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.nextButton addTarget:self action:@selector(nextButtonClicked) forControlEvents:UIControlEventTouchDown];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.outputLable.text = [Value sharedValue].text;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)nextButtonClicked {
    [self presentViewController:[[InputSingletonViewController alloc] init] animated:YES completion:nil];
}

@end
