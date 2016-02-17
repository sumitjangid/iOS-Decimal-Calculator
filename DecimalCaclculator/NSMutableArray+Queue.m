//
//  NSMutableArray+Queue.m
//  DecimalCaclculator
//
//  Created by Sumit Jangid on 10/17/15.
//  Copyright © 2015 Sumit Jangid. All rights reserved.
//

#import "NSMutableArray+Queue.h"

@implementation NSMutableArray (Queue)

-(void) enqueue: (id) item{
    
    [self addObject: item];
}

-(id) dqueue{
    
    id value = nil;
    
    if ([self count] > 0) {
        value = [self objectAtIndex:0];
        [self removeObjectAtIndex:0];
    }
        return value;
}

@end
