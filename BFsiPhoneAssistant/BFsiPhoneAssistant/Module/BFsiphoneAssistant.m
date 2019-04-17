//
//  BFsiphoneAssistant.m
//  BFsiPhoneAssistant
//
//  Created by 刘玲 on 2019/4/16.
//  Copyright © 2019年 BFs. All rights reserved.
//

#import "BFsiphoneAssistant.h"
#import <sys/utsname.h>

@implementation BFsiphoneAssistant

static BFsiphoneAssistant *assistant;
static dispatch_once_t onceToken;

#pragma mark - API

+ (instancetype)sharedInstance {
    
    dispatch_once(&onceToken, ^{
        assistant = [[BFsiphoneAssistant alloc] init];
    });
    
    return assistant;
}

- (void)destoryInstance {
    
    if (onceToken) {
        assistant = nil;
        onceToken = 0;
    }
}

- (NSString *)getDeviceType {
    NSString *deviceName;
    deviceName = [self iphoneType];
    
    return deviceName;
}

- (NSString *)iphoneType {
    
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString*phoneType = [NSString stringWithCString: systemInfo.machine encoding:NSASCIIStringEncoding];
    
    if([phoneType  isEqualToString:@"iPhone1,1"])  return @"iPhone 2G";
    
    if([phoneType  isEqualToString:@"iPhone1,2"])  return @"iPhone 3G";
    
    if([phoneType  isEqualToString:@"iPhone2,1"])  return @"iPhone 3GS";
    
    if([phoneType  isEqualToString:@"iPhone3,1"])  return @"iPhone 4";
    
    if([phoneType  isEqualToString:@"iPhone3,2"])  return @"iPhone 4";
    
    if([phoneType  isEqualToString:@"iPhone3,3"])  return @"iPhone 4";
    
    if([phoneType  isEqualToString:@"iPhone4,1"])  return @"iPhone 4S";
    
    if([phoneType  isEqualToString:@"iPhone5,1"])  return @"iPhone 5";
    
    if([phoneType  isEqualToString:@"iPhone5,2"])  return @"iPhone 5";
    
    if([phoneType  isEqualToString:@"iPhone5,3"])  return @"iPhone 5c";
    
    if([phoneType  isEqualToString:@"iPhone5,4"])  return @"iPhone 5c";
    
    if([phoneType  isEqualToString:@"iPhone6,1"])  return @"iPhone 5s";
    
    if([phoneType  isEqualToString:@"iPhone6,2"])  return @"iPhone 5s";
    
    if([phoneType  isEqualToString:@"iPhone7,1"])  return @"iPhone 6Plus";
    
    if([phoneType  isEqualToString:@"iPhone7,2"])  return @"iPhone 6";
    
    if([phoneType  isEqualToString:@"iPhone8,1"])  return @"iPhone 6s";
    
    if([phoneType  isEqualToString:@"iPhone8,2"])  return @"iPhone 6sPlus";
    
    if([phoneType  isEqualToString:@"iPhone8,4"])  return @"iPhone SE";
    
    if([phoneType  isEqualToString:@"iPhone9,1"])  return @"iPhone 7";
    
    if([phoneType  isEqualToString:@"iPhone9,2"])  return @"iPhone 7Plus";
    
    if([phoneType  isEqualToString:@"iPhone10,1"]) return @"iPhone 8";
    
    if([phoneType  isEqualToString:@"iPhone10,4"]) return @"iPhone 8";
    
    if([phoneType  isEqualToString:@"iPhone10,2"]) return @"iPhone 8Plus";
    
    if([phoneType  isEqualToString:@"iPhone10,5"]) return @"iPhone 8Plus";
    
    if([phoneType  isEqualToString:@"iPhone10,3"]) return @"iPhone X";
    
    if([phoneType  isEqualToString:@"iPhone10,6"]) return @"iPhone X";
    
    if([phoneType  isEqualToString:@"iPhone11,8"]) return @"iPhone XR";
    
    if([phoneType  isEqualToString:@"iPhone11,2"]) return @"iPhone XS";
    
    if([phoneType  isEqualToString:@"iPhone11,4"]) return @"iPhone XS Max";
    
    if([phoneType  isEqualToString:@"iPhone11,6"]) return @"iPhone XS Max";
    
    return @"unKnown";
}

@end
