//
//  interface.m
//  HelloWord
//
//  Created by Nguyen Duc Tai on 3/29/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
//

#import "interface.h"

@implementation Tai

- (instancetype)init
{
    self = [super init];
    if (self) {
        int x = 0;
        while (true) {
            x++;
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * x * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                
                self.random = rand();
                
                if (self.instance != nil) {
                    [self.instance inracaulenh];
                }
                //NSLog(@"Minh in button ra:%d", self.randomNumber);
                
            });
            if (x > 1000) {
                break;
            }
        }
    }
    return self;
}



@end
