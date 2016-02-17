//
//  Arithmetic.h
//  DecimalCaclculator
//
//  Created by Sumit Jangid on 10/18/15.
//  Copyright © 2015 Sumit Jangid. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Arithmetic <NSObject>

-(id) multiply : (id) numbers;
-(id) divide   : (id) numbers;
-(id) add      : (id) numbers;
-(id) subtract : (id) numbers;

@end
