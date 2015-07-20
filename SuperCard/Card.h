//
//  Card.h
//  CardGame
//
//  Created by Kelsey Pedersen on 6/29/15.
//  Copyright (c) 2015 Kelsey Pedersen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end
