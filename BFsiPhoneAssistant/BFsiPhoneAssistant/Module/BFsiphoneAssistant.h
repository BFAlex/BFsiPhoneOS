//
//  BFsiphoneAssistant.h
//  BFsiPhoneAssistant
//
//  Created by 刘玲 on 2019/4/16.
//  Copyright © 2019年 BFs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BFsiphoneAssistant : NSObject

+ (instancetype)sharedInstance;
- (void)destoryInstance;
- (NSString *)getDeviceType;


@end

NS_ASSUME_NONNULL_END
