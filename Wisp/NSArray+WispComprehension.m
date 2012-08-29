//
//  NSArray+WispComprehension.m
//  Wisp
//
//  Created by Leon Gersing on 8/29/12.
//  Copyright (c) 2012 Leon Gersing. All rights reserved.
//

#import "WispComprehension.h"
#import "NSArray+WispComprehension.h"

@implementation NSArray (WispComprehension)
- (NSArray *)itemsWhere:(BOOL(^)(id item))iterator{
  return [WispComprehension itemsFrom:self where:iterator];
}

- (NSArray *)map:(id(^)(id item))func{
  __block NSMutableArray *results = [NSMutableArray arrayWithCapacity:self.count];
  
  dispatch_apply(self.count, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^(size_t iteration) {
    id item = [self objectAtIndex:iteration];
    if(item){
      [results insertObject:func(item) atIndex:iteration];
    } else {
      [results insertObject:[NSNull null] atIndex:iteration];
    }
  });
  
  return [NSArray arrayWithArray:results];
}

@end
