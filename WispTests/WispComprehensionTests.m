//
//  WispTests.m
//  WispTests
//
//  Created by Leon Gersing on 8/29/12.
//  Copyright (c) 2012 Leon Gersing. All rights reserved.
//

#import "WispComprehensionTests.h"
#import "Wisp.h"

@implementation WispComprehensionTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testReduceComprehension
{
  NSArray *allNumbers = @[ @1, @2, @3, @4, @5, @6 ];
  NSArray *num2s = [allNumbers itemsWhere:^BOOL(id item) {
    return [item isEqual:@2];
  }];
  
  id num2 = [num2s objectAtIndex:0];
  STAssertTrue([num2 isEqual:@2], @"should be 2");
}

- (void)testSelectComprehension{
  NSArray *allNumbers = @[ @1, @2, @3, @4, @5, @6 ];
  NSArray *evens = [allNumbers itemsWhere:^BOOL(id item) {
    return ([item intValue] % 2 == 0);
  }];
  
  NSArray *anyOddsInThere = [evens itemsWhere:^BOOL(id item) {
    return ([item intValue] % 2 != 0);
  }];
  
  STAssertTrue(evens.count == 3, @"should have 3 items.");
  STAssertTrue(anyOddsInThere.count == 0, @"should have 0 items.");
}

- (void)testFindByClassType{
  NSArray *all = @[@1, @"Foo", @{ @"bar" : @"baz" }, @42];
  NSArray *strings = [all itemsWhere:^BOOL(id item) {
    return ([item isKindOfClass:[NSString class]]);
  }];
  
  for (id item in strings) {
    STAssertTrue([item isKindOfClass:[NSString class]], @"there can be only strings");
  }
  
}

- (void)testMap{
  NSArray *nums = [NSArray from:0 to:10];
  NSArray *formattedStrings = [nums map:^id(id item) {
    return [NSString stringWithFormat:@"item %@", item];
  }];
  
  for (id item in formattedStrings) {
    STAssertTrue([item isKindOfClass:[NSString class]], @"there can be only strings");
  }
}

@end
