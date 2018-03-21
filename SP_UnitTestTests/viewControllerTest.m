//
//  viewControllerTest.m
//  SP_UnitTestTests
//
//  Created by 苹果电脑 on 2018/3/21.
//  Copyright © 2018年 Eleven_Liu. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface viewControllerTest : XCTestCase
@property (nonatomic, strong) ViewController *vc;
@end

@implementation viewControllerTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.vc = [ViewController new];
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSendRequest {
    //Given 1.1 新建一个异常
    XCTestExpectation *expectation = [self expectationWithDescription:@"fail to pass the testing"];
    
    //2 When 测试
    [self.vc sendRequest:^(id obj) {
        //Then 3.1 obj是不是我想要的对象；这个值是不是为空
        XCTAssertNotNil(obj);
        
        //Then 3.2 延迟范围内一定要得到我们要的目标预期
        [expectation fulfill]; //相当于炸弹开关，时间范围内不运行就会抛出异常
    }];
    
    //Given 1.2 炸弹计时器
    [self waitForExpectationsWithTimeout:4  handler:nil];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
