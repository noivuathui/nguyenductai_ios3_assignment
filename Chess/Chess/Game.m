//
//  Game.m
//  Chess
//
//  Created by Nguyen Duc Tai on 4/2/16.
//  Copyright © 2016 TechKid. All rights reserved.
//

#import "Game.h"
#import "King.h"
#import "Queen.h"
#import "Bishop.h"
#import "Rook.h"
#import "Pawn.h"
#import "Knight.h"


@implementation Game

-(instancetype)init {
    self = [super init];
    if(self) {
        
        
        self.whitePlayer = [[Player alloc]init];
        self.blackPlayer = [[Player alloc]init];
        
        self.arrWhiteChess = [NSMutableArray array];
        self.arrBlackChess = [NSMutableArray array];
        
        for(int i = 0 ; i < 8 ; i ++) {
            Pawn *pawn = [[Pawn alloc] init];
        }
    }
}
-(BOOL) checkKill;{
    NSLog(@"ok");
    return YES;
}
-(BOOL) isGameOver;{
    NSLog(@"bay bay");
    return YES;
}

@end
