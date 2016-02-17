//
//  ViewController.h
//  DecimalCaclculator
//
//  Created by Sumit Jangid on 10/4/15.
//  Copyright © 2015 Sumit Jangid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Arithmetic.h"

int operation;
double displayNumber;
double resultNumber;
BOOL isDecimal;

@interface ViewController : UIViewController
{
  IBOutlet UILabel *result;
}

-(void)setResultWithNumber:(int)theNumber;

-(void)operationWithNumber:(int)theNumber;

- (IBAction)AC:(id)sender;

- (IBAction)plus_minus:(id)sender;

- (IBAction)divide:(id)sender;

- (IBAction)multiply:(id)sender;

- (IBAction)subtract:(id)sender;

- (IBAction)add:(id)sender;

- (IBAction)equals:(id)sender;

- (IBAction)SquareRoot:(id)sender;

- (IBAction)dot:(id)sender;

- (IBAction)zero:(id)sender;

- (IBAction)one:(id)sender;

- (IBAction)two:(id)sender;

- (IBAction)three:(id)sender;

- (IBAction)four:(id)sender;

- (IBAction)five:(id)sender;

- (IBAction)six:(id)sender;

- (IBAction)seven:(id)sender;

- (IBAction)eight:(id)sender;

- (IBAction)nine:(id)sender;

@end

