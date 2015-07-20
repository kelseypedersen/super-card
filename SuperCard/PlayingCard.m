//  PlayingCard.m
//  CardGame
//
//  Created by Kelsey Pedersen on 6/29/15.
//  Copyright (c) 2015 Kelsey Pedersen. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

// Overriding the implementation of the contents method in the Card model
// But, not re-declaring the contents property in card.h
// Inherit that declaration from the Card superclass

// Overriding card match method
- (int)match:(NSArray *)otherCards
{
    int score = 0;
    if ([otherCards count] == 1) {
        id card = [otherCards firstObject];
        if ([card isKindOfClass:[PlayingCard class]]){
            PlayingCard *otherCard = (PlayingCard *)card;
            if ([self.suit isEqualToString:otherCard.suit]) {
                score = 1;
            } else if(self.rank == otherCard.rank){
                score = 4;
            }
        }
    }
 
    
    NSMutableArray *otherCardsCollectionForComparison = [otherCards mutableCopy];
    for (PlayingCard *otherCard in otherCards){
        [otherCardsCollectionForComparison removeObject:otherCard];
        for (PlayingCard *otherCardInOtherCardsCollection in otherCardsCollectionForComparison){
            if (otherCard.rank == otherCardInOtherCardsCollection.rank){
                score += 4;
            } else if ([otherCard.suit isEqualToString:otherCardInOtherCardsCollection.suit]){
                score += 1;
            }
        }
    }
    
    return score;
}

- (NSString *)contents
{
    // @[ ... ] === via the conpiler ===> [[NSArray alloc] initWithObjects:...].
    // rankStrings[self.rank] === via the conpiler ===> [rankStrings objectAtIndexedSubscript:self.rank]
    
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

// Needed when implementing *both* the setter and getter for a property
// Creates instance variable for the property, suit
// _suit is the instance variable






@synthesize suit = _suit;

// Class method (+)
// Since not sent to an instance, cannot reference playing card properties, since properties represent a per-instances
+ (NSArray *)validSuits{
    return @[@"♥️", @"♦️", @"♠️", @"♣️"];
}

// Suit setter
- (void)setSuit:(NSString *)suit{
    // Sending containObject: to the array of created below
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

// KILLIN IT, KELSEY!

// Suit getter
// Overriding the getter for suit to return "?" if nil
- (NSString *)suit {
    return _suit ? _suit : @"?";
}

+ (NSArray *)rankStrings {
    return @[@"?", @"A", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank { return [[self rankStrings] count] -1; }

// Rank setter
- (void)setRank:(NSUInteger)rank {
    if (rank <= [PlayingCard maxRank]){
        _rank = rank;
    }
}


@end
