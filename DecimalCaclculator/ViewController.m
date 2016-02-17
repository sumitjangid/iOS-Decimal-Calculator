//
//  ViewController.m
//  DecimalCaclculator
//
//  Created by Sumit Jangid on 10/4/15.
//  Copyright © 2015 Sumit Jangid. All rights reserved.
//

#import "ViewController.h"
#import "Operand.h"
#import "Operator.h"
#import "InfixCalculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    isDecimal = false;
    resultNumber = 0;
    result.adjustsFontSizeToFitWidth = TRUE;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setResultWithNumber:(int)theNumber{

    if(!isDecimal){
        
        displayNumber *= 10;
        displayNumber += theNumber;
        result.text =[NSString stringWithFormat:@"%.0f", displayNumber];
    }
    else{
        
        result.text = [result.text stringByAppendingString:[NSString stringWithFormat:@"%d", theNumber]];
    }
    displayNumber = [result.text floatValue ];
}

-(void)operationWithNumber:(int)theNumber{
    
    isDecimal = false;
    if (resultNumber == 0) {
        resultNumber = displayNumber;
    }
    else{
        result.text = [NSString stringWithFormat:@"%.2f", resultNumber];
    switch (operation) {
        case 1:
            resultNumber += displayNumber;
            break;
        case 2:
            resultNumber -= displayNumber;
            break;
        
        case 3:
            resultNumber *= displayNumber;
            break;
        
        case 4:
            resultNumber /= displayNumber;
            break;
            
        case 5:
            resultNumber /= displayNumber;
            break;
            
        default:
            break;
        }
    }
    operation = theNumber;
    displayNumber = 0;
    
}

- (IBAction)AC:(id)sender {
    
    operation = 0;
    resultNumber = 0;
    displayNumber = 0;
    isDecimal = false;
    result.text = [NSString stringWithFormat:@"%i",0];
}

- (IBAction)plus_minus:(id)sender {
    
    displayNumber = 0 - displayNumber;
    if (isDecimal) {
        result.text = [NSString stringWithFormat:@"%.2f", displayNumber];
    }
    else
        result.text = [NSString stringWithFormat:@"%.0f", displayNumber];
    
}

- (IBAction)divide:(id)sender {
    
    if (resultNumber != 0) {
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        displayNumber = [result.text floatValue];
        resultNumber = 0;
    }
    [self operationWithNumber:4];
}

- (IBAction)multiply:(id)sender {
    
    if (resultNumber != 0) {
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        displayNumber = [result.text floatValue];
        resultNumber = 0;
    }
    [self operationWithNumber:3];
}

- (IBAction)subtract:(id)sender {
    
    if (resultNumber != 0) {
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        displayNumber = [result.text floatValue];
        resultNumber = 0;
    }
    [self operationWithNumber:2];
}

- (IBAction)add:(id)sender {
    
    if (resultNumber != 0) {
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        displayNumber = [result.text floatValue];
        resultNumber = 0;
    }
    [self operationWithNumber:1];
}

- (IBAction)equals:(id)sender {
    
    [self operationWithNumber:operation];
    result.text = [NSString stringWithFormat:@"%.2f", resultNumber];
    displayNumber = [result.text floatValue];
    resultNumber = 0;

    
}

- (IBAction)SquareRoot:(id)sender {
    
    if (resultNumber != 0) {
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        displayNumber = [result.text floatValue];
        resultNumber = 0;
    }
    [self operationWithNumber:5];
}

- (IBAction)dot:(id)sender {
    
    isDecimal = true;
    NSRange range = [result.text rangeOfString:@"."];
    if (range.location == NSNotFound) {
        result.text = [result.text stringByAppendingString:@"."];
    }
}

- (IBAction)zero:(id)sender {
    
    [self setResultWithNumber:0];
}

- (IBAction)one:(id)sender {
    
    [self setResultWithNumber:1];
}

- (IBAction)two:(id)sender {
    
    [self setResultWithNumber:2];
}

- (IBAction)three:(id)sender {
    
    [self setResultWithNumber:3];
}

- (IBAction)four:(id)sender {
    
    [self setResultWithNumber:4];
}

- (IBAction)five:(id)sender {
    
    [self setResultWithNumber:5];
}

- (IBAction)six:(id)sender {
    
    [self setResultWithNumber:6];
}

- (IBAction)seven:(id)sender {
    
    [self setResultWithNumber:7];
}

- (IBAction)eight:(id)sender {
    
    [self setResultWithNumber:8];
}

- (IBAction)nine:(id)sender {
    
    [self setResultWithNumber:9];
}
@end
