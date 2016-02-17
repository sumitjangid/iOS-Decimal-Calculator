//
//  Operand.h
//  DecimalCaclculator
//
//  Created by Sumit Jangid on 10/18/15.
//  Copyright © 2015 Sumit Jangid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Arithmetic.h"

@interface Operand : NSObject <Arithmetic>

@property NSNumber* value;

@end
