//  Deck.m
//  CardGame
//
//  Created by Kelsey Pedersen on 6/29/15.
//  Copyright (c) 2015 Kelsey Pedersen. All rights reserved.
//

#import "Deck.h"

@interface Deck()
// Creating array to store deck of cards
@property (strong, nonatomic) NSMutableArray *cards;
@end


@implementation Deck

// This heap allocation (queued storage) is in the getter method for the cards @property

- (NSMutableArray *)cards
{
    // If the pointer to the object is nil, allocate and initialize the cards object
    if (!_cards) _cards = [[NSMutableArray alloc]init];
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop {
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
        // With the NSMutableArray being initialized above in the NSMutableArray cards, the cards property will always at least be an empty mutable array so thiswill always work. Without the if statement above, this object returned by self.cards never gets created.
    } else {
        [self.cards addObject:card];
    }
}

- (void)addCard:(Card *)card {
    [self addCard:card atTop:NO];
}

// Grabs a card from random spot in self.cards array
- (Card *)drawRandomCard {
    
    Card *randomCard = nil;
    
    // Protecting against an argument of zero, which will crash the program
    if ([self.cards count]) {
        // arc4random() returns a random integer
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}


@end

