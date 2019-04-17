//
//  ViewController.m
//  BFsiPhoneAssistant
//
//  Created by 刘玲 on 2019/4/16.
//  Copyright © 2019年 BFs. All rights reserved.
//

#import "ViewController.h"
#import "BFsiphoneAssistant.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self test];
}

- (void)test {
    NSString *type = [[BFsiphoneAssistant sharedInstance] getDeviceType];
    NSLog(@"手机型号: %@", type);
}


@end
