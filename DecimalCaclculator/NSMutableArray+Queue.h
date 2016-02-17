//
//  NSMutableArray+Queue.h
//  DecimalCaclculator
//
//  Created by Sumit Jangid on 10/17/15.
//  Copyright © 2015 Sumit Jangid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Queue)

-(void) enqueue: (id) item;

-(id) dqueue;

@end
