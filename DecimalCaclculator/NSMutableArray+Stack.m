//
//  NSMutableArray+Stack.m
//  DecimalCaclculator
//
//  Created by Sumit Jangid on 10/17/15.
//  Copyright © 2015 Sumit Jangid. All rights reserved.
//

#import "NSMutableArray+Stack.h"

@implementation NSMutableArray (Stack)

-(void) push:(id)item{
    
    [self addObject:item];
}

-(id)pop{
    
    id value = nil;
    if ([self count] > 0){
        
        value = [self lastObject];
        [self removeLastObject];
        
    }
   
    return value;
    
}

-(id)peek{
    
    id value = nil;
    if ([self count] > 0){
        
        value = [self lastObject];
    }
    
    return value;
    
}

@end
