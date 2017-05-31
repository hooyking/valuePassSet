//
//  Value.h
//  valuePassSet
//
//  Created by hooyking on 2017/5/31.
//  Copyright © 2017年 hooyking. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Value : NSObject

@property (nonatomic, strong) NSString *text;

+ (Value *)sharedValue;

@end
