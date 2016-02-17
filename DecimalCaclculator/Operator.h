//
//  Operator.h
//  DecimalCaclculator
//
//  Created by Sumit Jangid on 10/18/15.
//  Copyright © 2015 Sumit Jangid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Operand.h"

@interface Operator : NSObject

@property NSMutableArray *operators;

-(BOOL)checkPriority:(NSString*)op1 secondOp:(NSString*)op2;
-(int)getPriority:(NSString*)operator;

@end
