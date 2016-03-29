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
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                
            if (self.instance != nil) {
                [self.instance inracaulenh];
            }
        });
    }
    return self;
}
@end
