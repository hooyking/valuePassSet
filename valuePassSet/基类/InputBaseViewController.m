//
//  InputBaseViewController.m
//  valuePassSet
//
//  Created by hooyking on 2017/5/31.
//  Copyright © 2017年 hooyking. All rights reserved.
//

#import "InputBaseViewController.h"

@interface InputBaseViewController ()

@end

@implementation InputBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.textField];
    [self.view addSubview:self.button];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.textField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - 懒加载
- (UITextField *)textField {
    if (!_textField) {
        _textField = [[UITextField alloc] initWithFrame:CGRectMake(WIDTH/6, 100, WIDTH*2/3, 40)];
        _textField.placeholder = @"在此输入";
        _textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _textField.borderStyle = UITextBorderStyleRoundedRect;
    }
    return _textField;
}

- (UIButton *)button {
    if (!_button) {
        _button = [UIButton buttonWithType:UIButtonTypeSystem];
        [_button setTitle:@"看结果咯" forState:UIControlStateNormal];
        _button.titleLabel.font = [UIFont systemFontOfSize:30];
        _button.frame = CGRectMake(WIDTH/6, 200, WIDTH*2/3, 40);
    }
    return _button;
}

@end
