//
//  NSMutableArray+Stack.h
//  DecimalCaclculator
//
//  Created by Sumit Jangid on 10/17/15.
//  Copyright © 2015 Sumit Jangid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Stack)

-(void) push: (id) item;
-(id) pop ;
-(id) peek;

@end
