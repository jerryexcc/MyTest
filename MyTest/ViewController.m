//
//  ViewController.m
//  MyTest
//
//  Created by 世明 on 2017/12/27.
//  Copyright © 2017年 世明. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *higth;
@property (weak, nonatomic) IBOutlet UITextField *weight;

@end
int nAAA = 123, nAA;
double cal;

int myFunc(int myInt){
    return (++myInt);
}


@implementation ViewController
#pragma mark - 測試用標題 didLoad
- (void)viewDidLoad {
    [super viewDidLoad];
    //testing commit2
}
- (IBAction)calculate:(id)sender {
    double myHigth = [_higth.text doubleValue];
    double myWeight = [_weight.text doubleValue];
    
    cal = (myWeight / (myHigth * myHigth)) * 10000;
    NSLog(@"你的BMI為:%d", (int) cal);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testingBTAction:(id)sender {
//    NSString *a = [NSString new];
    
    NSString *a = [[NSString alloc]init];
    a = @"12345";
//    myFunc(nAAA);
    NSLog(@"a = %@\n", a);
    NSLog(@"%@", [NSString stringWithFormat: @"nAAA = %d\n", [self myFunc:nAAA]]);
}

-(int)myFunc:(int)myInt{
    //nAA = myInt + 1;
    return (++nAAA);
}
@end


