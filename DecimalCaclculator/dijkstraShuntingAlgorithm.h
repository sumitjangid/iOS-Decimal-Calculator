//
//  dijkstraShuntingAlgorithm.h
//  DecimalCaclculator
//
//  Created by Sumit Jangid on 10/19/15.
//  Copyright © 2015 Sumit Jangid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Arithmetic.h"
#import "Operator.h"
#import "Operand.h"
#import "NSMutableArray+Queue.h"
#import "NSMutableArray+Stack.h"

@interface dijkstraShuntingAlgorithm : NSObject
{
    NSMutableArray * inputQueue;
    NSMutableArray * outputQueue;
    NSMutableArray * FirstStackInput;
    NSMutableArray * SecondStackInput;
    NSMutableArray * FirstTerm;
    NSMutableArray * SecondTerm;
}

//For Queue
-(void) enqueue:(id) term;
-(id) dequeue;

//For First Stack
-(void) pushInToFirstStack:(id) Operator;
-(Operator *) popInToFirstStack;
-(Operator *) peekInToFirstStack;

//For Second Stack
-(void) pushIntoSecondStack: (id) Operand;
-(Operand *) peekInToSecondStack;
-(Operand *) popInToSecondStack;

@end
