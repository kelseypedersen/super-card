//
//  Card.m
//  CardGame
//
//  Created by Kelsey Pedersen on 6/29/15.
//  Copyright (c) 2015 Kelsey Pedersen. All rights reserved.
//

#import "Card.h"

@interface Card()
@end

@implementation Card


// Create method match which takes the argument, otherCards
// A public method so declared in the header file

- (int)match:(NSArray *)otherCards

{
    // Automatically starts at 0, so specifying this is a preference, not necessary
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    
    return score;
}

@end
