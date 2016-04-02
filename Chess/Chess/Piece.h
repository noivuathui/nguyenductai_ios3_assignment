//
//  Piece.h
//  Chess
//
//  Created by Nguyen Duc Tai on 4/2/16.
//  Copyright © 2016 TechKid. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    King = 1,
    Queen = 2,
    Knight = 3,
    Bishop = 4,
    Rook = 5,
    Pawn = 6
} ChessType;


@interface Piece : NSObject

@property Boolean ;
@property int x;
@property int y;

-(void) isMoveValid : (NSMutableArray *)arrChess;

@end
