//
//  dijkstraShuntingAlgorithm.m
//  DecimalCaclculator
//
//  Created by Sumit Jangid on 10/19/15.
//  Copyright © 2015 Sumit Jangid. All rights reserved.
//

#import "dijkstraShuntingAlgorithm.h"

@implementation dijkstraShuntingAlgorithm

-(void) enqueue:(id)term
{
    [inputQueue enqueue:(id)term];
}

-(id) dequeue
{
    return [outputQueue dqueue];
}

-(void) pushInToFirstStack:(id)Operator
{
    [FirstStackInput push:(id) Operator];
}

-(Operator *) popInToFirstStack
{
    return [FirstTerm pop];
}

-(Operator *) peekInToFirstStack
{
    return [SecondTerm peek];
}

-(void) pushIntoSecondStack:(id)Operand
{
    [SecondStackInput push:(id) Operand];
}

-(Operand *) peekInToSecondStack
{
    return [FirstTerm peek];
}

-(Operand *) popInToSecondStack
{
    return [SecondTerm pop];
}

@end
