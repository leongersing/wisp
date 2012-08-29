//
//  WispComprehension.m
//  Wisp
//
//  Created by Leon Gersing on 8/29/12.
//  Copyright (c) 2012 Leon Gersing. All rights reserved.
//

#import "WispComprehension.h"

@implementation WispComprehension

+ (NSArray *)itemsFrom:(NSArray *)list
                 where:(BOOL(^)(id item))iterator{
  
  __block NSMutableArray *results = [NSMutableArray arrayWithCapacity:list.count];
  dispatch_apply(list.count, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^(size_t iteration) {
    id obj = [list objectAtIndex:iteration];
    if(iterator(obj))
      [results addObject:obj];
  });
  return [NSArray arrayWithArray:results];
}


@end
