//
//  Flower.m
//  HelloWord
//
//  Created by Nguyen Duc Tai on 3/27/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
//

#import "Flower.h"
#import "interface.h"

@implementation Flower

-(void) smell
{
    NSLog(@"mui thom..");
}

//-(void) inracaulenh "tao bat dc roi";

-(void) inracaulenh {
    NSString *dayroi = @"Hello";
}


-(instancetype)init
{
    self = [super init];
    if (self) {
        self.leg_num = 1;
        self.eye_num = 2;
    }
    
    Tai *tai1 = [[Tai alloc] init];
    tai1.instance = self;
    
    return self;
}

- (void)TaiDepTrai:(int)random
{
    NSLog(@"Flower: %d", random);
}

-(void)inracaulenh {
    NSLog(@"tao bat dc roi : %d");
}

/*void feedChild(int child1Num, int child2Num) */
- (void) bien1:(int)num1 bien2:(int)num2 ;
{
    NSLog(@"Dog Feed.... %d, %d", num1, num2);
}

//- (void)bark
//{
//    NSLog(@"Dog Bark....");
//}

@end
