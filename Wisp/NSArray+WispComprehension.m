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

@end
