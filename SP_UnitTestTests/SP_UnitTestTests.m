//
//  SP_UnitTestTests.m
//  SP_UnitTestTests
//
//  Created by Eleven_Liu on 2018/3/15.
//  Copyright © 2018年 Eleven_Liu. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface SP_UnitTestTests : XCTestCase
@property (nonatomic, strong) ViewController *vc;

@end

@implementation SP_UnitTestTests

- (void)setUp {
    [super setUp];
    // 初始化代码，在测试方法调用之前调用
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.vc = [[ViewController alloc] init];
}

- (void)tearDown {
    //每个测试用例执行后都会调用
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    self.vc = nil;
    
    [super tearDown];
}

- (void)testExample {
    //测试用例的例子
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSInteger resulet = [self.vc sum:2];
    XCTAssertEqual(resulet, 2, @"测试不tongg");
}

- (void)testPerformanceExample {
    //测试性能例子
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
