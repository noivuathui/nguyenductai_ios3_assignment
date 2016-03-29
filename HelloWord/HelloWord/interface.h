//
//  interface.h
//  HelloWord
//
//  Created by Nguyen Duc Tai on 3/29/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Trees.h"

@protocol TaiDepTrai <NSObject>

-(void) inracaulenh ;

@end

@interface Tai : Trees
@property id<TaiDepTrai> instance;
@property int random;


@end
