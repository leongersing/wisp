//
//  NSArray+WispSequence.m
//  Wisp
//
//  Created by Leon Gersing on 8/29/12.
//  Copyright (c) 2012 Leon Gersing. All rights reserved.
//

#import "NSArray+WispSequence.h"

@implementation NSArray (WispSequence)

+ (NSArray *)from:(int)starting to:(int)ending{
  return [self from:starting to:ending by:1];
}

+ (NSArray *)from:(int)starting to:(int)ending by:(int)incrementBy{
  int i;
  NSMutableArray *results = [NSMutableArray arrayWithCapacity:0];
  for (i = starting; i < ending; i += incrementBy) {
    [results addObject:[NSNumber numberWithInt:i]];
  }
  return [NSArray arrayWithArray:results];
}

@end
