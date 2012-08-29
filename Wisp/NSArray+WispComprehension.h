//
//  NSArray+WispComprehension.h
//  Wisp
//
//  Created by Leon Gersing on 8/29/12.
//  Copyright (c) 2012 Leon Gersing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (WispComprehension)
- (NSArray *)itemsWhere:(BOOL(^)(id item))iterator;

- (NSArray *)map:(id(^)(id item))func;
@end
