//
//  InfixCalculator.m
//  DecimalCaclculator
//
//  Created by Sumit Jangid on 10/19/15.
//  Copyright © 2015 Sumit Jangid. All rights reserved.
//

#import "InfixCalculator.h"

@implementation InfixCalculator


- (InfixCalculator*) init{
    self = [super init];
    if (self){
        itp = [[InfixToPostfix alloc] init];
        postCalc = [[PostfixCalculator alloc] init];
    }
    return self;
}

- (void) dealloc
{
}

- (NSDecimalNumber*) computeExpression: (NSString*) infixExpression {
    NSString* postfixExpression = [itp parseInfix: infixExpression];
    
    if (postfixExpression) {
        return [postCalc compute: postfixExpression];
    }
    
    return nil;
}


@end
