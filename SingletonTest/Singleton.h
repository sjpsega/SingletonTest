//
//  Singleton.h
//  Singleton
//
//  Created by sjpsega on 14-10-10.
//  Copyright (c) 2014年 sjpsega. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject<NSCopying>
+ (Singleton *)sharedInstance;
@end
