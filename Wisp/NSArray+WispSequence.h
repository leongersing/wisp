//
//  NSArray+WispSequence.h
//  Wisp
//
//  Created by Leon Gersing on 8/29/12.
//  Copyright (c) 2012 Leon Gersing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (WispSequence)

+ (NSArray *)from:(int)starting to:(int)ending;
+ (NSArray *)from:(int)starting to:(int)ending by:(int)incrementBy;

@end
