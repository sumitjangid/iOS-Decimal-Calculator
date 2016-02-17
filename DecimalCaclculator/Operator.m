//
//  Operator.m
//  DecimalCaclculator
//
//  Created by Sumit Jangid on 10/18/15.
//  Copyright © 2015 Sumit Jangid. All rights reserved.
//

#import "Operator.h"

@implementation Operator

-(id)init
{
    
    self=[super init];
    if(self)
    {
        
       self.operators=[[NSMutableArray alloc]initWithObjects:nil];
        
    }
    
    return self;
    
}
-(BOOL)checkPriority:(NSString*)op1 secondOp:(NSString*)op2
{
    
    if([self getPriority:op1]<[self getPriority:op2])
    {
        return YES;
        
    }
    else
    {
        return NO;
    }
    
}

-(int)getPriority:(NSString*)operator
{
    if([operator isEqualToString:@"*"] || [operator isEqualToString:@"/"])
    {
        
        return 10;
    }
    if([operator isEqualToString:@"+"] || [operator isEqualToString:@"-"])
    {
        
        return 5;
    }
    return 0;
    
}


@end
