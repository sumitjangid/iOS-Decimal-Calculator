//
//  InfixCalculator.h
//  DecimalCaclculator
//
//  Created by Sumit Jangid on 10/19/15.
//  Copyright © 2015 Sumit Jangid. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "InfixToPostfix.h"
#import "PostfixCalculator.h"

@interface InfixCalculator : NSObject {
    InfixToPostfix *itp;
    PostfixCalculator *postCalc;
}

- (InfixCalculator*) init;
- (void) dealloc;
- (NSDecimalNumber*) computeExpression: (NSString*) infixExpression;

@end
