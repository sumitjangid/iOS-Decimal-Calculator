//
//  InfixToPostfix.h
//  DecimalCaclculator
//
//  Created by Sumit Jangid on 10/19/15.
//  Copyright © 2015 Sumit Jangid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SimpleStack.h"


@interface InfixToPostfix : NSObject {
    NSDictionary * operatorPrecedence;
}

- (InfixToPostfix*) init;
- (void) dealloc;

- (NSString*) parseInfix: (NSString*) infixExpression;

@end
