//
//  NSObject+WispComprehension.h
//  Wisp
//
//  Created by Leon Gersing on 8/29/12.
//  Copyright (c) 2012 Leon Gersing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (WispComprehension)

- (NSArray *)itemsFrom:(NSArray *)list
                 where:(BOOL(^)(id item))iterator;

@end
