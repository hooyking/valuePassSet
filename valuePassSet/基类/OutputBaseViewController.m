//
//  OutputBaseViewController.m
//  valuePassSet
//
//  Created by hooyking on 2017/5/31.
//  Copyright © 2017年 hooyking. All rights reserved.
//

#import "OutputBaseViewController.h"

@interface OutputBaseViewController ()

@end

@implementation OutputBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.outputLable];
    [self.view addSubview:self.nextButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (UILabel *)outputLable {
    if (!_outputLable) {
        _outputLable = [[UILabel alloc] initWithFrame:CGRectMake(WIDTH/6, 100, WIDTH*2/3, 50)];
        _outputLable.textAlignment = NSTextAlignmentCenter;
        _outputLable.backgroundColor = [UIColor colorWithWhite:0.8 alpha:1];
    }
    return _outputLable;
}

- (UIButton *)nextButton {
    if (!_nextButton) {
        _nextButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _nextButton.frame = CGRectMake(WIDTH/6, 200, WIDTH*2/3, 60);
        _nextButton.titleLabel.font = [UIFont systemFontOfSize:30];
        [_nextButton setTitle:@"去下页输入" forState:UIControlStateNormal];
    }
    return _nextButton;
}

@end
