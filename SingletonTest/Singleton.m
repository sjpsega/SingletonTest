//
//  Singleton.m
//  Singleton
//
//  Created by sjpsega on 14-10-10.
//  Copyright (c) 2014年 sjpsega. All rights reserved.
//

#import "Singleton.h"
@implementation Singleton

+ (Singleton *)sharedInstance{
    static dispatch_once_t onceToken;
    static Singleton *_singleton = nil;
    dispatch_once(&onceToken,^{
        _singleton = [[super allocWithZone:NULL] init];
    });
    return _singleton;
}

+ (id)allocWithZone:(struct _NSZone *)zone{
    return [self sharedInstance];
}

#pragma - implement NSCopying
- (id)copyWithZone:(NSZone *)zone
{
    return self;
}
@end
