//
//  Value.m
//  valuePassSet
//
//  Created by hooyking on 2017/5/31.
//  Copyright © 2017年 hooyking. All rights reserved.
//

#import "Value.h"

@implementation Value

- (instancetype)init {
    @throw [NSException exceptionWithName:@"单例传值抛出异常" reason:@"不能使用init方法初始化,这是个单例" userInfo:nil];
    return self;
}

- (instancetype)initPrivate {
    self = [super init];
    if (self) {
        
    }
    return self;
}

+ (Value *)sharedValue {
    static Value *value = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!value) {
            value = [[Value alloc] initPrivate];
        }
    });
    return value;
}

@end
