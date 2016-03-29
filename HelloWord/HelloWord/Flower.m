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

-(void) inracaulenh {
    NSLog(@"tao bat dc roi :");
}

@end
