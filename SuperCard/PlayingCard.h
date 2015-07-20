//  PlayingCard.h
//  CardGame
//
//  Created by Kelsey Pedersen on 6/29/15.
//  Copyright (c) 2015 Kelsey Pedersen. All rights reserved.
//


#import "Card.h"

// Subclass of Card
@interface PlayingCard : Card

// Additional properties of PlayingCard not on Card

// Contains a single character representing a corresponding suit. If nil, the suit not yet set.
@property (strong, nonatomic) NSString *suit;

// Is an integer from 0 (rank not yet set) to 13 (a King)
// NSUIngeger is an unsigned integer - only used in public folder (public API) and unsignedint and in inside the .m file. Mostly a style choice though. Recommended to use on or the other everywhere.

@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
