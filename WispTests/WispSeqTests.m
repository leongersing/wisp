//
//  WispSeqTests.m
//  Wisp
//
//  Created by Leon Gersing on 8/29/12.
//  Copyright (c) 2012 Leon Gersing. All rights reserved.
//

#import "WispSeqTests.h"
#import "Wisp.h"

@implementation WispSeqTests

- (void)testFromTo{
  NSArray *amtOfProblems = [NSArray from:1 to:100];
  STAssertTrue(amtOfProblems.count == 99, @"Apparently a bitch is one.");
}

- (void)testFromToBy{
  NSArray *amtOfProblems = [NSArray from:1 to:100 by:2];
  STAssertTrue(amtOfProblems.count == 50, @"Apparently a bitch is one.");
}

- (void)testEvensIn1000Numbers{
  NSArray *evens = [[[NSArray from:1 to:1001] itemsWhere:^BOOL(id item) {
    return ([item intValue] % 2 == 0);
  }] sortedArrayUsingSelector:@selector(compare:)];
  
  STAssertTrue(evens.count == 500, @"expected 500");
  
  for (id num in evens) {
    BOOL isEven = ([num intValue] % 2 == 0);
    STAssertTrue(isEven, @"expected only EVEN integers");
  }
  
  STAssertEqualObjects(evens, [NSArray from:2 to:1001 by:2], @"either way should be the same.");
}

@end
