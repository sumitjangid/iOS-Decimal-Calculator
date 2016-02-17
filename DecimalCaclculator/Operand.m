//
//  Operand.m
//  DecimalCaclculator
//
//  Created by Sumit Jangid on 10/18/15.
//  Copyright © 2015 Sumit Jangid. All rights reserved.
//

#import "Operand.h"

@implementation Operand

-(NSNumber*) add: (Operand*) number{
    NSNumber* addition ;
    return [addition initWithFloat:[[self value] floatValue] + [[number value]floatValue]];
}
-(NSNumber*) subtract: (Operand*) number{
    
    NSNumber* subtraction;
    return [subtraction initWithFloat:[[self value] floatValue] - [[number value]floatValue]];
    
}

-(NSNumber*) multiply: (Operand*) number{
    
    NSNumber* multiplication;
    return [multiplication initWithFloat:[[self value] floatValue] * [[number value]floatValue]];
    
}

-(NSNumber*) divide: (Operand*) number{
    
    NSNumber* division;
    return [division initWithFloat:[[self value] floatValue] / [[number value]floatValue]];
    
}

@end
