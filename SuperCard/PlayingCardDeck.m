//
//  PlayingCardDeck.m
//  CardGame
//
//  Created by Kelsey Pedersen on 6/29/15.
//  Copyright (c) 2015 Kelsey Pedersen. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype)init {
    
    // Testing to see if you can initialize the superclass.
    // If nil, cannot initialize.
    // Use self as protection from continuing with nil.
    
    self = [super init];
    if (self) {
        
        // Nested itineration through all the suits and ranks in the suit
        for (NSString *suit in [PlayingCard validSuits]){
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++){
                PlayingCard *card = [[PlayingCard alloc]init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card atTop:YES];
            }
        }
        
    }
    return self;
}

@end
