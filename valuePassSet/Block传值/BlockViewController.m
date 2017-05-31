//
//  BlockViewController.m
//  valuePassSet
//
//  Created by hooyking on 2017/5/31.
//  Copyright © 2017年 hooyking. All rights reserved.
//

#import "BlockViewController.h"
#import "InputBlockViewController.h"

@interface BlockViewController ()

@end

@implementation BlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.nextButton addTarget:self action:@selector(nextButtonClicked) forControlEvents:UIControlEventTouchDown];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)nextButtonClicked {
    InputBlockViewController *blockVC = [[InputBlockViewController alloc] init];
    //若是不在block传入的类里定义并暴露方法，就不会自动跳出^(NSString *text){}，且调用格式也不一样了，推荐定义方法
    //这个是定义了方法的
    [blockVC returnText:^(NSString *text) {
        self.outputLable.text = text;
    }];
    //这个是未定义方法的
    //    blockVC.block = ^(NSString *text){
    //        self.outputLable.text = text;
    //    };
    [self presentViewController:blockVC animated:YES completion:nil];
}

@end
