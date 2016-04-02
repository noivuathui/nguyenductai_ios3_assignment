//
//  Game.h
//  Chess
//
//  Created by Nguyen Duc Tai on 4/2/16.
//  Copyright © 2016 TechKid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface Game : NSObject

@property Player *whitePlayer;
@property Player *blackPlayer;

@property NSMutableArray *arrWhiteChess;
@property NSMutableArray *arrBlackChess;

//-(void)init;
-(BOOL)checkKill;
-(BOOL)isGameOver;

@end
