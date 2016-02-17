//
//  SimpleStack.h
//  DecimalCaclculator
//
//  Created by Sumit Jangid on 10/19/15.
//  Copyright © 2015 Sumit Jangid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SimpleStack : NSObject{
    NSMutableArray *array;
}

@property (readonly, retain) NSMutableArray *array;

- (SimpleStack*) init;
- (void) dealloc;
- (void) push:(id) object;
- (id) pop;
- (NSInteger) size;
- (void) print;
- (BOOL) empty;
- (id) peek;

@end
