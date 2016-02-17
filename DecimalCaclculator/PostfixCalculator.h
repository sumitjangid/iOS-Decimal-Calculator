//
//  PostfixCalculator.h
//  DecimalCaclculator
//
//  Created by Sumit Jangid on 10/19/15.
//  Copyright © 2015 Sumit Jangid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SimpleStack.h"

@interface PostfixCalculator : NSObject{
    NSArray* operators;
    SimpleStack* stack;
}


- (PostfixCalculator*) init;
- (void) dealloc;
- (NSDecimalNumber *) compute:(NSString*) postfixExpression;

@end
