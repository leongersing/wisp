//
//  NSObject+WispComprehension.m
//  Wisp
//
//  Created by Leon Gersing on 8/29/12.
//  Copyright (c) 2012 Leon Gersing. All rights reserved.
//

#import "WispComprehension.h"
#import "NSObject+WispComprehension.h"

@implementation NSObject (WispComprehension)

- (NSArray *)itemsFrom:(NSArray *)list
                 where:(BOOL(^)(id item))iterator{
  return [WispComprehension itemsFrom:list where:iterator];
}

@end
