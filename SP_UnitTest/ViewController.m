//
//  ViewController.m
//  SP_UnitTest
//
//  Created by Eleven_Liu on 2018/3/15.
//  Copyright © 2018年 Eleven_Liu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)sum:(NSInteger)num {
    return num;
}

//模拟网络异步请求
- (void)sendRequest:(void (^)(id))finished {
    dispatch_queue_t goubleQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(goubleQueue, ^{
        [NSThread sleepForTimeInterval:3];
        NSString *tagString = @"网络请求成功耗时3秒";
        
        dispatch_async(dispatch_get_main_queue(), ^{
            finished(tagString);
        });
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
