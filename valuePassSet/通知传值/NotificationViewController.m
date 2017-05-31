//
//  NotificationViewController.m
//  valuePassSet
//
//  Created by hooyking on 2017/5/31.
//  Copyright © 2017年 hooyking. All rights reserved.
//

#import "NotificationViewController.h"
#import "InputNotificationViewController.h"

@interface NotificationViewController ()

@end

@implementation NotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.nextButton addTarget:self action:@selector(nextButtonClicked) forControlEvents:UIControlEventTouchDown];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(acceptNotification:) name:@"notification" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)acceptNotification:(NSNotification *)noti {
    self.outputLable.text = noti.object;
    NSLog(@"通知传值里面的name:%@",noti.userInfo[@"name"]);
}

- (void)nextButtonClicked {
    [self presentViewController:[[InputNotificationViewController alloc] init] animated:YES completion:nil];
}

@end
